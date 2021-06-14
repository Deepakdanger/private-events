class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    user =User.find(current_user.id)
    
    @event = user.event.build(post_params)
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

  def post_params
    params.require(:event).permit(:event_name, :events_date, :location).merge(user: current_user)
  end
end
