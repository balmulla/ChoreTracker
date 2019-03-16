class Task < ApplicationRecord
    has_many :chores
    has_many :children, through: :chores
    
    validates :name, presence: true
    validates :points, numericality: {greater_than_or_equal_to: 1}
    validates :points, numericality: { only_integer: true }
    
    scope :alphabetical, -> { order('name ASC') }
    scope :active, -> { where('active = ?', true) }
end
