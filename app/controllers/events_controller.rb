class EventsController < ApplicationController
  before_action :set_event, only: [:edit, :update, :destroy, :show]

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to action: :index, controller: :game_types
    else
      render :new
    end
  end

  def destroy
    @event.destroy
  end

  def edit
  end

  def index
    @events = Event.all
    @new_user = User.new
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    @new_user = User.new
  end

  def update
    if @event.update!(event_params)
      redirect_to event_index_path(@event)
    else
      flash[:errors] = 'You fucked up'
    end
  end

  private

  def event_params
    eps = params.require(:event)
                .permit(:name, :game_type_id, :location_id, :minimum_number)

    if !params[:event][:location_text].empty?
      location = Location.create({ name: params[:event][:location_text] })
      eps[:location_id] = location.id
    end

    if !params[:event][:game_type_text].empty?
      game_type = GameType.create({ name: params[:event][:game_type_text] })
      eps[:game_type_id] = game_type.id
    end

    date_str = params[:event][:date] + params[:event][:time]
    begin
      eps[:date_time] = DateTime.parse(date_str)
    rescue
      puts 'Date Time invalid: ', params[:event][:date], params[:event][:time]
    end
    eps
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
