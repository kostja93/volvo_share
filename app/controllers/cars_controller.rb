class CarsController < ApplicationController
  def index
    objects = Car.all.find_all do |car|
      valid = false

      if filter_params.any?
        filter_params.each_with_index do |values|
          key = values.first
          value = values.last
          valid = true if car[key] == value || car[key] == value.to_i
        end
        valid
      else
        true
      end
    end
    render json: objects.to_json
  end

  private

  def filter_params
    filtered_params = params.permit(:name, :color, :seats, :horse_power).to_h
  end
end
