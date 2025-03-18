class MatchesController < ApplicationController
  def show
    matched_hash = {
      user_id: params[:user_id],
      profile_id: params[:id]
    }
    # ver se esse match já existe
    # se já existe, eviar ele mesmo
    # se não existe, criar um match novo
    @match = Match.create(matched_hash)
    @message = Message.new
  end

  def create
    @user = User.find(params[:user_id])

    @match = Match.find_by(user: current_user, matched_user: @user) ||
             Match.find_by(user: @user, matched_user: current_user)
    unless @match
      @match = Match.new(user: current_user, matched_user: @user)
      @match.save
    end

    redirect_to match_path(@match)
  end

  private

  def match_params
    params.require(:match).permit(:status)
  end
end
