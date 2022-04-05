require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      training: "MyString",
      weight: 1.5,
      set: 1,
      user: nil
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input[name=?]", "event[training]"

      assert_select "input[name=?]", "event[weight]"

      assert_select "input[name=?]", "event[set]"

      assert_select "input[name=?]", "event[user_id]"
    end
  end
end
