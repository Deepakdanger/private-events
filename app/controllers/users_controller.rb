class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @attending_events = user.attending_events
    @created_events = user.events
  end
end
