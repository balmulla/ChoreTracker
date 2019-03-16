class Chore < ApplicationRecord
    belongs_to :child
    belongs_to :task
    validates_datetime :due_on
    
    scope :by_task, -> { order('task_id DESC') }
    scope :chronological, -> { order('due_on ASC, completed DESC') }
end
