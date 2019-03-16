class Child < ApplicationRecord
    has_many :chores
    has_many :tasks, through: :chores 
    
    validates :first_name, :last_name, presence: true
    
    def name 
        @f = self.first_name
        @l = self.last_name
        @fl = @f + " " + @l
    end
    
    scope :alphabetical, -> { order('first_name ASC') }
    scope :active, -> { where("active = ?", true) }
end
