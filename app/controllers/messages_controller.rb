class MessagesController < ApplicationController

  def new
    @message = Message.new
    @message.receiver_id = params[:receiver_id]
  end

  def create
    @message_my = Message.new message_params
    @message_my.user_id = current_user.id
    @message_my.sender_id = current_user.id
    @message_my.save
    @message = Message.new message_params
    @message.user_id = params[:message][:receiver_id]
    @message.sender_id = current_user.id
    @message.save
    redirect_to @message_my
  end



  def show
    @message = Message.find(params[:id])
  end

  def index
    @messages=Message.where(user_id:current_user.id)
  end

private

    def message_params
      params[:message].permit(:receiver_id, :content, :title)
    end


end
