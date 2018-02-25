class PagesController < ApplicationController
  def index
  end

  def car_request
  end

  def request_taken
  end

  def car_dash_1
    render layout: 'car_dash'
  end

  def car_dash_2
    render layout: 'car_dash'
  end

  def car_dash_3
    render layout: 'car_dash'
  end

  def car_dash_end
    current_user.karma += 50
    current_user.save
    render layout: 'car_dash'
  end
end
