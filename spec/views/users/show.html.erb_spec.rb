# frozen_string_literal: true

require "rails_helper"

RSpec.describe "users/show", type: :view do
  let(:user) { create(:user) }

  before { assign(:user, user) }

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
  end
end
