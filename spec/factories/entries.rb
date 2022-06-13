FactoryBot.define do
  factory :entry do
    title { "MyString" }
    body { nil }
    due_date { "2022-06-13 20:18:49" }
    resurface_date { "2022-06-13 20:18:49" }
    entry_type { 1 }
    collection { nil }
  end
end
