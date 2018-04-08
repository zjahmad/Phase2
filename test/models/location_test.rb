require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  should have_many :camps
 
  should validate_presence_of :name
  should validate_uniqueness_of(:name).case_insensitive
  should validate_presence_of :street_1 
  should validate_presence_of :zip
  should validate_presence_of :max_capacity
  should allow_value("12345").for(:zip)
  should_not allow_value("1").for(:zip)
  should_not allow_value("123456789").for(:zip)
  should_not allow_value("lol").for(:zip)
  should allow_value(5).for(:max_capacity)
  
end
