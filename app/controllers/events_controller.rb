class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @events = Event.all
    @past_events = @events.past_event
    @future_events = @events.future_event
  end

  def new
    @event = Event.new
  end

  def create
    user = User.find(current_user.id)
    @event = user.events.build(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :events_date, :location)
  end
end
