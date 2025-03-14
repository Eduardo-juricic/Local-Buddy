class ProfilesController < ApplicationController
  skip_before_action :set_profile, only: %i[new create]

  def index
    @profiles = Profile.where(traveler: false)

    if params[:query].present?
      @profiles = @profiles.where(
        "country ILIKE :query OR city ILIKE :query",
        query: "%#{params[:query]}%"
      )
    end
  end

  def new
    redirect_to root_path if current_user.profile.present?

    @profile = Profile.new
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to root_path, notice: "Perfil criado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  private

  def profile_params
    params.require(:profile).permit(:bio, :country, :city, :traveler, :preferences, :food, :name, :animal, :availability, :language)
  end
end
