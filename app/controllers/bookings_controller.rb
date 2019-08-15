class BookingsController < ApplicationController
  def create
  	@booking = Booking.new(bookings_params)
  	authorize @booking
  	@baby = Baby.find(params[:baby_id])
  	@booking.user = current_user
  	@booking.baby = @baby
  	@booking.price = @baby.price_per_day * (((@booking.end_date - @booking.start_date) / 86_400) + 1)

  	if @booking.save
      redirect_to dashboard_path
    else
      render 'babies/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :price)
  end
end
