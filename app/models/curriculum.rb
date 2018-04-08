class Curriculum < ApplicationRecord
    
    has_many :camps
    
    validates :name, presence: true, uniqueness: { case_sensitive: false }
    # validates_presence_of :name
    # validates_uniqueness_of :name
    validates_presence_of :min_rating, numericality: { only_integer: true } #, greater_than: 0, less_than: 3000 }
    validates_inclusion_of :min_rating, :in => 0..3000
    validates_presence_of :max_rating, numericality: { only_integer: true }  #, greater_than: 0, less_than: 3000 }
    validates_inclusion_of :max_rating, :in => 0..3000
    
    scope :active, -> { where(active: true) }
    scope :inactive, -> { where(active: false) }
    scope :alphabetical, -> { order(:name) }
    scope :for_rating, ->(rating) { where('min_rating <= ? and max_rating >= ?', rating, rating) }

end
