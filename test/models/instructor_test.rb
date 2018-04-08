require 'test_helper'

class InstructorTest < ActiveSupport::TestCase
  should have_many(:camp_instructors)
  should have_many(:camps).through(:camp_instructors)

  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)
  should validate_presence_of(:email)
  should validate_uniqueness_of(:email).case_insensitive

  should allow_value("lol@troll.com").for(:email)
  should allow_value("jeff@qatar.cmu.edu").for(:email)
  should allow_value("kaplan@troll.org").for(:email)
  should allow_value("lol@troll.gov").for(:email)
  should allow_value("lol@troll.net").for(:email)
  
  should_not allow_value("jeffkaplan").for(:email)
  should_not allow_value("jeffkaplan@troll,com").for(:email)
  should_not allow_value("jeffkaplan@troll.uk").for(:email)
  should_not allow_value("my jeffkaplan@troll.com").for(:email)
  should_not allow_value("jeffkaplan@troll.con").for(:email)
  

    
  # context "tester" do
    
  #   setup do 
  #     create_instructors
  #   end
    
  #   should "show that name method works" do
  #       assert_equal "Ahmad, Zuhair", @Zuhair.name
  #       assert_equal "Nadeem, Hassan", @Hassan.proper_name
  #   end
    
  # end
  
end
