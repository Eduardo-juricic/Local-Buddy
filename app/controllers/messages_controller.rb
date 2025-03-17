class MessagesController < ApplicationController
  before_action :set_match
  before_action :authenticate_user! 

  def index
    @messages = @match.messages.order(created_at: :asc)
  end

  def create
    @message = @match.messages.new(message_params)
    @message.user = current_user

    if @message.save
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.append("messages", partial: "messages/message", locals: { message: @message })
        end
        format.html do
          redirect_to match_path(@match), notice: "Mensagem enviada com sucesso!"
        end
      end
    else
      flash[:alert] = "Erro ao enviar mensagem."
      render "matches/show", status: :unprocessable_entity
    end
  end

  private

  def set_match
    @match = Match.find(params[:match_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
