class CarTransfer < ApplicationRecord
  def car_specs
    begin
      JSON.parse(car_describtion)
    rescue
      {}
    end
  end
end
