class Child < ApplicationRecord
    has_many :chores
    has_many :tasks, through: :chores 
    
    validates :first_name, :last_name, presence: true
end
