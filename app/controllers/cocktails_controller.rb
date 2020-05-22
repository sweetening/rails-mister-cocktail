class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    set_cocktail
  end

  def new
    @cocktail = Cocktail.new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktails_path(@cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :doses, :ingredients)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
