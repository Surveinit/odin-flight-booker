class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @passenger_count = params[:passenger_count].to_i

    @booking = Booking.new
    @passenger_count.times { @booking.passengers.build }
  end

  def create
    @flight = Flight.find(params[:booking][:flight_id])
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to(@booking, notice: "Booking was successfully done.")
    else
      # Log the errors for debugging
      Rails.logger.error(@booking.errors.full_messages)
      @booking.passengers.each do |passenger|
        Rails.logger.error(passenger.errors.full_messages)
      end

      render(:new, status: :unprocessable_entity)
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_count, passengers_attributes: [ :name, :email ])
  end
end
