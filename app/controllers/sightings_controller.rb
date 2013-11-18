class SightingsController < ApplicationController
  def index
    render text: "ALL the sightings."
  end

  def create
    render text: "Sighting created."
  end
end
