class BabiesController < ApplicationController
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
      redirect_to render: :new
    end
  end

  def babies_params
    params.require(:baby).permit(:first_name, :photo, :age, :gender, :description, :price_per_day, :clean, :sleepy, :excited, :crying, :fat, :playful, :funny, :public, :animals, :speaks, :title)
  end
end
