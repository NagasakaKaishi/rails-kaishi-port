require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      training: "MyString",
      weight: 1.5,
      set: 1,
      user: nil
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input[name=?]", "event[training]"

      assert_select "input[name=?]", "event[weight]"

      assert_select "input[name=?]", "event[set]"

      assert_select "input[name=?]", "event[user_id]"
    end
  end
end
