class CarsController < ApplicationController
  before_action :set_car, only: [:show, :update]
 
  def index
    respond_to do |format|
      format.json { render json: Car.all }
    end  	
  end
 
  def show
    respond_to do |format|
      format.json { render json: @car }
    end    	
  end
 
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.json { render json: @car, status: :ok }
      else
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end    
  end
 
  private
    def set_car
      @car = Car.find(params[:id])
    end    
 
    def car_params
      params.require(:car).permit(:id, :make, :model, :color, :condition)
    end
end