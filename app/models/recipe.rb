class Recipe < ApplicationRecord
end
class Recipe < ApplicationRecord
    has_many :ingredients, dependent: :destroy
    has_many :procedures, dependent: :destroy
  
    # 材料と手順を一緒に保存
    accepts_nested_attributes_for :ingredients, allow_destroy: true
    accepts_nested_attributes_for :procedures, allow_destroy: true
  end  