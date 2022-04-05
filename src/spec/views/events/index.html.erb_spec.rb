require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        training: "Training",
        weight: 2.5,
        set: 3,
        user: nil
      ),
      Event.create!(
        training: "Training",
        weight: 2.5,
        set: 3,
        user: nil
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", text: "Training".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
