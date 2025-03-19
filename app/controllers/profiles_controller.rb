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

  def edit
    @profile = current_user.profile
    redirect_to root_path, alert: "Você não tem permissão para editar este perfil." unless @profile
  end

  def update
    @profile = current_user.profile
    if @profile.update(profile_params)
      redirect_to profile_path(@profile), notice: "Perfil atualizado com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:bio, :country, :city, :traveler, :preferences, :food, :name, :animal, :availability, :language, :photo)
  end
end
