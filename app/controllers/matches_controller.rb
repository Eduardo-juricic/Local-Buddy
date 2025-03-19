class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    @message = Message.new
  end

  def create
    match = Match.find_or_create_by(user_id: current_user.id, profile_id: params[:profile_id]) do |m|
      m.profile_id = params[:profile_id]
    end
    redirect_to match_path(match)
  end

  private

  def match_params
    params.require(:match).permit(:profile_id)
  end
end
