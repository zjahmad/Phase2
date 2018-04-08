class Instructor < ApplicationRecord
    has_many :camp_instructors
    has_many :camps, through: :camp_instructors
    
    validates_presence_of :first_name, :last_name, :email
    validates_format_of :phone, :with => /^[0-9()-]+$/, :multiline => true
    validates :email, presence: true, uniqueness: { case_sensitive: false}
    validates_format_of :email, :with => /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i
    
    scope :active, -> { where(active: true) }
    scope :inactive, -> { where(active: false) }
    scope :alphabetical, -> { order('name') }
    scope :needs_bio, -> { where(bio: nil) }
    
    def name
        # "#{last_name}, #{first_name}"
    end
    
    def proper_name
        # "#{first_name} #{last_name}"
    end
    
    def self.for_camp(camp)
    end
end
