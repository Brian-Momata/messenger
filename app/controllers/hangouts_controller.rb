class HangoutsController < ApplicationController
  before_action :authenticate_user!

  def index
    @messages = Message.includes(:user)
  end
end
