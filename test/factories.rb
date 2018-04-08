FactoryBot.define do
    
  factory :curriculum do
    name "CMU Chess"
    description "This shud work"
    max_rating 1000
    active true
  end
  
  factory :instructor do
    first_name "Zuhair"
    last_name "Ahmad"
    bio "Zuhair is a pro"
    phone "66302947"
    email "zjahmad@qatar.cmu.edu"
    active true
  end
  
  factory :camp do 
    cost 200
    start_date Date.new(2018,8,20)
    end_date Date.new(2018,8,30)
    time_slot "pm"
    max_students 5
    active true
    association :curriculum
    association :location
  end
  
  factory :camp_instructor do 
    association :camp
    association :instructor
  end

  factory :location do
    name "CMUQ"
    street_1 "QF"
    street_2 "EC"
    city "Doha"
    state "FL"
    zip "12345"
    max_capacity 15
    active true
  end
  
end