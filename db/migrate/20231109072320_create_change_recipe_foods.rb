class AddcolumnRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :recipe_foods, :food_name, :string
    add_column :recipe_foods, :recipe_name, :string
  end
end
