class ToppingsController < ApplicationController
  def index
    @toppings = Topping.all
  end

  def new
    @topping = Topping.new
  end
  
  def create
    @topping = Topping.new(topping_params)
    if @topping.save
      redirect_to root_path, notice: "Topping was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @topping = Topping.find(params[:id])
  end

  def update
    @topping = Topping.find(params[:id])

    if @topping.update(topping_params)
      redirect_to root_path, notice: "Topping was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @topping = Topping.find(params[:id])
    @topping.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def topping_params
      params.require(:topping).permit(:name)
    end
end
