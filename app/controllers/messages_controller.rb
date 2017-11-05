class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @message = Message.create!(params_permitted)
  end

  def params_permitted
    params.require(:message).permit(:content, :user_id)
  end
end