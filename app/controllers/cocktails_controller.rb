class CocktailsController < ApplicationController

  def index
    # @cocktail = Cocktail.new #temp
    @dose = Dose.new #temp
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
    @ingredients = Ingredient.all
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
    # @cocktail = Cocktail.find(params[:id])
    @cocktail = Cocktail.new
    @ingredients = Ingredient.all
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

end
