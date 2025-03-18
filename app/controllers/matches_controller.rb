class MatchesController < ApplicationController
  def show
    @message = Message.new
  end

  def create
    @user = User.find(params[:user_id])
    @match = Match.find_by(user: current_user, profile: @user) ||
             Match.find_by(user: @user, profile: current_user)
    unless @match
      @match = Match.new(user: current_user, profile: @user)
      @match.save
    end
    redirect_to match_path(@match)
  end

  private

  def match_params
    params.require(:match).permit(:status)
  end
end
