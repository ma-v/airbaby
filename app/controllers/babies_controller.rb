class BabiesController < ApplicationController
  before_action :set_baby, only: [:show, :edit, :update, :destroy]

  def show
  	@booking = Booking.new
  end

  def new
    @baby = Baby.new
    authorize @baby
  end

  def create
    @baby = Baby.new(babies_params)
    authorize @baby
    @baby.user = current_user
    if @baby.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @baby.update(babies_params)
    redirect_to baby_path(@baby)
  end

  def destroy
    @baby.destroy
    redirect_to dashboard_path, notice: "Your baby has successfully been deleted !"
  end

  private

  def set_baby
    @baby = Baby.find(params[:id])
    authorize @baby
  end

  def babies_params
    params.require(:baby).permit(:first_name, :photo, :age, :gender, :description, :price_per_day, :clean, :sleepy, :excited, :crying, :fat, :playful, :funny, :public, :animals, :speaks, :title, :photo)
  end
end
