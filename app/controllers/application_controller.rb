class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_profile

  private

  def set_profile
    return if request.controller_class == Devise::SessionsController || current_user.nil?

    @current_profile = current_user.profile
    return if @current_profile.present?

    redirect_to new_profile_path
  end
end
