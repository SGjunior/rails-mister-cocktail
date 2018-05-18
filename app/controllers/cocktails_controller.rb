class CocktailsController < ApplicationController

  def index

    @random_id = Cocktail.count > 0 ? (1..Cocktail.count).to_a.sample : 1;
    @dose = Dose.new #temp
    @cocktail = Cocktail.find(1);
    # @cocktails_limit = Cocktail.limit(10)
    @cocktails = Cocktail.all
    # raise
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
    @cocktail = Cocktail.find(params[:id])
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
