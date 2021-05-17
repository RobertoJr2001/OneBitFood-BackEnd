class AvailableCitiesController < ApplicationController
  def index
    @available_cities = Restaurant.all.order(:city).map { |r| r.city }.uniq
  end
end
