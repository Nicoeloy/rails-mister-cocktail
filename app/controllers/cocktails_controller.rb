class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render "new"
    end
  end

  # def search
  #   @search = true
  #   if params[:query] == ""
  #     @cocktails = @cocktails = Cocktail.where.not(picture: nil)
  #   else
  #     @cocktails = Cocktail.where("name LIKE ?", "%#{params[:query].split.map(&:capitalize).join(' ')}%")
  #   end
  #   render :index
  # end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
