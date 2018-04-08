class Location < ApplicationRecord
    has_many :camps
    
    validates :name, presence: true, uniqueness: { case_sensitive: false }
    # validates_presence_of :name, uniqueness: { case_sensitive: false }
    # validates_uniqueness_of :name
    validates_presence_of :street_1
    validates :zip, presence: true, format: { with: /\A\d{5}(?:[-\s]\d{4})?\z/ } 
    #validates_format_of :zip, with => /^\d{5}(-\d{4})?$/, :message => 'Has to be 5 digits', allow_blank: true 
    validates_presence_of :max_capacity, numericality: { only_integer: true, greater_than: 0 }
    
    scope :active, -> { where(active: true) }
    scope :inactive, -> { where(active: false) }
    scope :alphabetical, -> { order('name') }
    
end
