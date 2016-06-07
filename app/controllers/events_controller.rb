class EventsController < ApplicationController
  before_action :set_event, only: [:edit, :update, :destroy, :show]

  def create
    @event = Event.create(event_params)
    if @event.save!
      render index
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
  end

  def new
    @event = Event.new
  end

  def show
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
    params
      .require(:event)
      .permit(:id, :name, :date, :time, :game_type_id, :location, :minimum_number)
  end

  def set_event
    @event = Event.find(event_params(:id))
  end
end
