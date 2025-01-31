class PassengerMailer < ApplicationMailer
  default from: "notifications@odinflights.com"

  def booking_successful
    @passenger = params[:passenger]
    mail(to: @passenger.email, subject: "Your Flight is successfully booked!")
  end
end
