class BookingsController < ApplicationController
  def new
    @flight_id = params[:flight_id]
    @flight = Flight.find(params[:flight_id])
    @passenger_count = params[:passenger_count]
  end

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_count)
  end
end
