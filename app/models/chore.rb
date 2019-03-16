class Chore < ApplicationRecord
    belongs_to :child
    has_one :task
end
