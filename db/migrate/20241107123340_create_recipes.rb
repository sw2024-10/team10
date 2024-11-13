class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :time
      t.integer :kcal
      t.string :type

      t.timestamps
    end
  end
end