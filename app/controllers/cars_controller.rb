class CarsController < ApplicationController
  def index
    objects = cars.find_all do |car|
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

  def cars
    [
      { name: 'Volvo_1', color: 'yellow', seats: 4, horse_power: 150, lat: 47.4142862, lng: 9.3567323},
      { name: 'Volvo_2', color: 'green', seats: 4, horse_power: 130, lat: 47.4342862, lng: 9.3587423},
      { name: 'Volvo_3', color: 'yellow', seats: 5, horse_power: 120, lat: 47.4541865, lng: 9.3257323},
      { name: 'Volvo_4', color: 'blue', seats: 2, horse_power: 340, lat: 47.4042862, lng: 9.3267323},
      { name: 'Volvo_5', color: 'red', seats: 5, horse_power: 180, lat: 47.4592362, lng: 9.3535223},
      { name: 'Volvo_6', color: 'silver', seats: 6, horse_power: 110, lat: 47.3942862, lng: 9.4167623}
    ].map(&:with_indifferent_access)
  end
end
