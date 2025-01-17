class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flights = Flight.all
    if params[:flight]
      if params[:flight][:departure_airport_id].present?
        @flights = @flights.where(departure_airport_id: params[:flight][:departure_airport_id])
      end

      if params[:flight][:arrival_airport_id].present?
        @flights = @flights.where(arrival_airport_id: params[:flight][:arrival_airport_id])
      end

      if params[:flight][:start_datetime].present?
        start_datetime = DateTime.parse(params[:flight][:start_datetime]).utc
        @flights = @flights.where("start_datetime >= ?", start_datetime)
      end
    end

    @passenger_count = params[:passenger_count]
  end

  private
  def flight_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :start_datetime, :passenger_count)
  end
end
