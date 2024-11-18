class RemoveTypeFromRecipesAddCategoryToRecipes < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipes, :type, :string  # 'type'カラムを削除
    add_column :recipes, :category, :string unless column_exists?(:recipes, :category) # 'category'カラムを追加
  end
end
