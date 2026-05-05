class Mission < ApplicationRecord
  belongs_to :agent

  enum :status, {
    assigned: "assigned",
    in_progress: "in_progress",
    completed: "completed"
  }, validate: true

  validates :title, presence: true
  validates :status, presence: true
end
