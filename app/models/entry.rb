class Entry < ApplicationRecord
  belongs_to :collection
  has_rich_text :body

  enum entry_type: {
    task_incomplete: 1,
    event: 5,
    note: 6,
    idea: 7,
    task_completed: 2,
    task_forwarded: 3,
    task_dismissed: 4,
  }
end
