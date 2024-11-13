class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    # 材料と手順を5つずつ
    5.times { @recipe.ingredients.build }
    5.times { @recipe.procedures.build }
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe, notice: "料理を追加しました"
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :title, :time, :kcal, :type,
      ingredients_attributes: [:id, :name, :_destroy],
      procedures_attributes: [:id, :step, :_destroy]
    )
  end
end