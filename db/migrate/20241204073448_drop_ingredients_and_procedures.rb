class DropIngredientsAndProcedures < ActiveRecord::Migration[6.1]
  def change
    drop_table :ingredients
    drop_table :procedures
  end
end
