class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def index
     @messages=Message.where(user_id:current_user.id)
  end

end
