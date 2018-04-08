class CampInstructor < ApplicationRecord
    
    belongs_to :camp
    belongs_to :instructor
    
    validates_presence_of :camp_id, numericality: { greater_than: 0, only_integer: true }
    validates_presence_of :instructor_id, numericality: { greater_than: 0, only_integer: true }

end
