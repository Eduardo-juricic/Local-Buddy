class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    @message = Message.new
  end

  def create
    @user = User.find(params[:user_id])
    @match = Match.new(match_params)
    @match.user = current_user
    @match.matched_user = @user

    if @match.save
      redirect_to @user
    else
      render "users/show"
    end
  end

  private

  def match_params
    params.require(:match).permit(:status) 
  end
end
