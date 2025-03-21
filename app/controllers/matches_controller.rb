class MatchesController < ApplicationController

  def show
    @match = Match.find(params[:id])
    @message = Message.new
  end

  def index
    @matches = Match.where("user_id = ? OR profile_id = ?", current_user.id, current_user.profile.id)
  end

  def create
    user = current_user
    profile = Profile.find(params[:profile_id])
    current_profile = Profile.find_by(user_id: user)

    @match = Match.find_by(user_id: profile.user_id, profile_id: current_profile)
    if @match
      redirect_to match_path(@match), notice: 'Match already exists.'
    else
      @match = Match.create(user_id: user.id, profile_id: profile.id)
      if @match.persisted?
        redirect_to match_path(@match), notice: 'Match created successfully.'
      else
        redirect_to profiles_path, alert: 'Unable to create match.'
      end
    end
  end

  private

  def match_params
    params.require(:match).permit(:profile_id)
  end
end
