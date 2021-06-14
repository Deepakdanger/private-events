class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
        
    @event = User.find(current_user.id).events.build(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :events_date, :location).merge(user: current_user)
  end
end
