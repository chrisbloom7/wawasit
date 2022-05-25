# frozen_string_literal: true

require "rails_helper"

RSpec.describe "users/index", type: :view do
  let(:users) { create_list(:user, 2) }

  before { assign(:users, users) }

  it "renders a list of users" do
    render
    assert_select "p", text: users[0].email
    assert_select "p", text: users[1].email
  end
end
