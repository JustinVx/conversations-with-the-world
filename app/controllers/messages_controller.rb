class MessagesController < ApplicationController
  include MessagesHelper

  def index
    @messages = Message.all
    if Message.first
      @conversation_partner = Message.first.author_name
      @my_name = Message.last.author_name
    else
      @conversation_partner = "Johan"
      @my_name = "Bert"
    end

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
