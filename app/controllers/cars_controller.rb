class CarsController < ApplicationController
  def index
    respond_to do |format|
      format.json { render json: Car.all }
    end  	
  end
end