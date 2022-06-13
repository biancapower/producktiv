class Entry < ApplicationRecord
  belongs_to :collection
  has_rich_text :body
end
