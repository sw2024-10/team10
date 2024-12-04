class Recipe < ApplicationRecord
  def ingredients_list
    ingredients.to_s.split("\n")
  end

  def procedures_list
    procedures.to_s.split("\n")
  end
end