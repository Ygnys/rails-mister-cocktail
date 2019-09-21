class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all

#     cocktail[:name] == params[:name]

end

 def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    # redirect_to
    # raise
  end

def new
  @cocktail = Cocktail.new
end

def create
  @cocktail = Cocktail.new(strong_params)
  if @cocktail.save
    redirect_to cocktail_path(@cocktail)
  else
    render :new
  end
end
# def search
#   raise
#   @cocktails = cocktails.select do |id, cocktail|
#     cocktail[:name] == params[:name]
#   end
# end

def update
    @restaurant = Restaurant.find(params[:id])
  end
def destroy
   @coctail = Cocktail.find(params[:id])
end

  private

  def strong_params
    params.require(:cocktail).permit(:name, :photo)
end
end

