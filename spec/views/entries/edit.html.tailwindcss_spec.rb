require 'rails_helper'

RSpec.describe "entries/edit", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      title: "MyString",
      body: nil,
      entry_type: 1,
      collection: nil
    ))
  end

  it "renders the edit entry form" do
    render

    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do

      assert_select "input[name=?]", "entry[title]"

      assert_select "input[name=?]", "entry[body]"

      assert_select "input[name=?]", "entry[entry_type]"

      assert_select "input[name=?]", "entry[collection_id]"
    end
  end
end
