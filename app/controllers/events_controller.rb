class EventsController < ApplicationController
  before_action :set_event, only: [:edit, :update, :destroy, :show]

  def create
    @event = Event.create(event_params)
    if @event.save!
      redirect_to action: 'game_types/index'
    else
      # flash[:errors] << @event.errors.full_message ?
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
      redirect_to events_index_path
    else
      flash[:errors] = 'You fucked up'
    end
  end

  private

  def event_params
    eps = params.require(:event)
                .permit(:name, :game_type_id, :location, :minimum_number)
    date_str = params[:event][:date] + params[:event][:time]
    eps[:date_time] = DateTime.parse(date_str)
    eps
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
