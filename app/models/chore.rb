class Chore < ApplicationRecord
    belongs_to :child
    belongs_to :task
    validates_datetime :due_on
    
    scope :by_task, -> { order('task_id DESC') }
    scope :chronological, -> { order('due_on ASC, completed DESC') }
    scope :pending, -> { where('completed =?', false) }
    scope :done, -> { where('completed =?', true) }
    scope :upcoming, -> { where('due_on >=?', Date.today) }
    scope :past, -> { where('due_on <?', Date.today) }
    
    def status 
        @completed = self.completed
        @result="Pending"
        if @completed
            @result ="Completed"
        end
        @result
    end
end
