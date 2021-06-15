class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_created_events = @user.created_events
  end
end
