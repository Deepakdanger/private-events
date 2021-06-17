class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    user = User.find(params[:id])
    @attending_events = user.attending_events
    @created_events = user.events
    @attended_past_events =  @attending_events.past_event
    @upcoming_events =  @attending_events.future_event
  end
end
