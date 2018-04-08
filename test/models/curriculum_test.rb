require 'test_helper'

class CurriculumTest < ActiveSupport::TestCase
  # test relationships
  should have_many(:camps)

  # test validations
  should validate_presence_of :name
  should validate_uniqueness_of(:name).case_insensitive

  should allow_value(1000).for(:min_rating)
  should allow_value(200).for(:min_rating)
  should allow_value(2500).for(:min_rating)
  should allow_value(0).for(:min_rating)
  should_not allow_value(nil).for(:min_rating)
  should_not allow_value(4000).for(:min_rating)
  should_not allow_value(-5).for(:min_rating)
  
end

