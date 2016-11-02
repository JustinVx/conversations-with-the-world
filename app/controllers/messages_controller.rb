class MessagesController < ApplicationController
  include MessagesHelper

  def index
    @messages = Message.all
    @conversation_partner = Message.first.author_name

    @message = Message.new
  end

  def new
    #@message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.save

    redirect_to messages_path
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    redirect_to messages_path
  end
end
