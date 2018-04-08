require 'test_helper'

class CampTest < ActiveSupport::TestCase
  
  should have_many(:camp_instructors)
  should belong_to(:location)
  should belong_to(:curriculum)

  should validate_presence_of :curriculum_id
  should validate_presence_of :location_id 
  # should validate_presence_of :cost
  should validate_presence_of :time_slot
  

  should allow_value(Date.today).for(:start_date)
  should_not allow_value(nil).for(:cost)
  should_not allow_value(nil).for(:curriculum_id)
  should_not allow_value(nil).for(:location_id)
  should_not allow_value(nil).for(:start_date)
  should_not allow_value(nil).for(:end_date)
  should_not allow_value(nil).for(:time_slot)
  should_not allow_value("x").for(:max_students)

  # context "In Contexts" do
  #   setup do
  #     create_camps
  #     create_active_locations
  #     create_curriculums
  #   end
    
  #   should "check if there is a camp name method" do
  #     assert_equal @camp1.name
  #     assert_equal @camp2.name
  #   end
  
  # end
  
end
