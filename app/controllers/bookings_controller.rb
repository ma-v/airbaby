class BookingsController < ApplicationController
  def create
  	@booking = Booking.new(bookings_params)
  	authorize @booking
  	@baby = Baby.find(params[:baby_id])
  	@booking.user = current_user
  	@booking.baby = @baby
  	@booking.price = 50
  	@booking.save
  	redirect_to dashboard_path
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :price)
  end
end
