require 'rails_helper'

RSpec.describe "entries/index", type: :view do
  before(:each) do
    assign(:entries, [
      Entry.create!(
        title: "Title",
        body: nil,
        entry_type: 2,
        collection: nil
      ),
      Entry.create!(
        title: "Title",
        body: nil,
        entry_type: 2,
        collection: nil
      )
    ])
  end

  it "renders a list of entries" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
