require "rails_helper"

RSpec.describe Ingredient, type: :model do
  describe 'relationships' do
    it { should have_many :recipe_ingredients }
    it { should have_many(:recipes).through :recipe_ingredients}
  end

  describe 'validations' do
    it { should validate_presence_of :name }
  end 
end
