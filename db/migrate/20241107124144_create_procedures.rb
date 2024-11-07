class CreateProcedures < ActiveRecord::Migration[7.1]
  def change
    create_table :procedures do |t|
      t.text :step
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
