class TripsController < ApplicationController
  def show
    location = params[:trip][:location]
    @content = Trip.generate_content(location)
  end
end
