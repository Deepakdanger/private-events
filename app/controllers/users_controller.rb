class UsersController < ApplicationController
  def show
    @user_created_event = User.find(params[:id]).events
  end
end
