require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      training: "Training",
      weight: 2.5,
      set: 3,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Training/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
