module MessagesHelper
  def message_params
    params.require(:message).permit(:author_name, :body)
  end
end
