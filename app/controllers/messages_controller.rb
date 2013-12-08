class MessagesController < ApplicationController

  def new
    @message = Message.new
    @message.receiver_id = params[:receiver_id]
  end

  def create
    @message = Message.new

  end

  def index
    @messages=Message.where(user_id:current_user.id)
  end

private

    def message_params
      params[:message].permit(:receiver_id, :content, :title)
    end


end
