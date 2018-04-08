class Camp < ApplicationRecord
    
    has_many :camp_instructors
    belongs_to :location
    belongs_to :curriculum
    has_many :instructors, through: :camp_instructors
    
    validates_presence_of :curriculum_id, :location_id, :start_date, :end_date, :time_slot 
    validates_numericality_of :cost, only_integer: true
    validates_numericality_of :max_students, only_integer: true
    
    scope :active, -> { where(active: true) }
    scope :inactive, -> { where(active: false) }
    scope :alphabetical, -> { joins(:curriculum).order('name') }
    scope :chronological, -> { order('start_date','end_date') }
    scope :morning, -> { where(time_slot: 'am') }
    scope :afternoon, -> { where(time_slot: 'pm') }
    scope :upcoming, -> { where('start_date >= ?', Date.today) }
    scope :past, -> { where('end_date < ?', Date.today) }
    scope :for_curriculum, ->(curriculum_id) { where('curriculum_id = ?', curriculum_id) }
    
    def name
        # self.curriculum.name
    end
    
end
