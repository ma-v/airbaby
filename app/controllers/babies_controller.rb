class BabiesController < ApplicationController
  before_action :set_baby, only: [:show]

  def show
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

  private

  def set_baby
    @baby = Baby.find(params[:id])
    authorize @baby
  end

  def babies_params
    params.require(:baby).permit(:first_name, :photo, :age, :gender, :description, :price_per_day, :clean, :sleepy, :excited, :crying, :fat, :playful, :funny, :public, :animals, :speaks, :title, :photo)
  end
end
