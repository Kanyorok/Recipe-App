class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, foreign_key: 'recipe_id'
  has_many :foods, through: :recipe_foods

  private

  def set_defaults
    self.public ||= false
  end
end
