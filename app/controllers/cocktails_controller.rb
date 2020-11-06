class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktails_params
    params.require(:cocktail).permit(:name, :photo)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
