class CarTransfer < ApplicationRecord
  def car_specs
    JSON.parse(car_describtion  || "{}")
  end
end
