class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
end

 def show
    @cocktail = Cocktail.find(params[:id])
  end

def create
  @coctail = Coctail.new(strong_params)
end

def new
  @cocktail = Cocktail.new
  if @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end
end


  private

  def strong_params
    params.require(:cocktail).permit(:name)
end
end
