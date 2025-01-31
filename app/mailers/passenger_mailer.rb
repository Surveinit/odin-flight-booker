class PassengerMailer < ApplicationMailer
  default from: "notifications@odinflights.com"

  def booking_successful
    @user = params[:user]
    mail(to: @user.email, subject: "Your Flight is successfully booked!")
  end
end
