class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe, notice: "料理を追加しました"
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :time, :kcal, :category, :ingredients, :procedures)
  end
  def index
    @recipes = Recipe.all  # すべてのレシピを取得
  end
end