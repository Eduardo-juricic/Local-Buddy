class TripsController < ApplicationController
  def show
    location = params[:trip][:location]
    @trip = Trip.find_or_create_by(name:location)
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
  end
end
