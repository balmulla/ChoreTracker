class Chore < ApplicationRecord
    belongs_to :child
    belongs_to :task
    validates_datetime :due_on
end
