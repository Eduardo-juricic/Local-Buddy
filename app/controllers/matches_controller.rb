class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    @message = Message.new
  end

  def create
    @user = User.find(params[:user_id])

    @match = Match.find_by(user: current_user, matched_user: @user) ||
             Match.find_by(user: @user, matched_user: current_user)

    unless @match
      @match = Match.new(user: current_user, matched_user: @user, status: "pending")
      @match.save
    end

    redirect_to match_path(@match)
  end

  private

  def match_params
    params.require(:match).permit(:status)
  end
end
