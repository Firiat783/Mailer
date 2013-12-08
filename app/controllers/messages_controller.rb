class MessagesController < ApplicationController

  def new
    @message = Message.new
    @message.receiver_id = params[:receiver_id]
  end

<<<<<<< HEAD
  def create
    @message = Message.new

  end


private

    def message_params
      params[:message].permit(:receiver_id, :content, :title)
    end

=======
  def index
     @messages=Message.where(user_id:current_user.id)
  end

>>>>>>> 272080b000f6aeca71367551e7e3d2192f03621f
end
