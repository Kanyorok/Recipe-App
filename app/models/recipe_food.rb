class RecipeFood < ApplicationRecord
  belongs_to :recipe_name, class_name: 'Recipe', foreign_key: 'recipe_id'
  belongs_to :food_name, class_name: 'Food', foreign_key: 'food_id'

  def calculate_value
    self.value = quantity * food.price.to_f
  end
end
