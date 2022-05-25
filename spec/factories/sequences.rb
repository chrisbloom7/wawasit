# frozen_string_literal: true

FactoryBot.define do
  sequence(:email) { |n| "test-#{n}@example.com" }
end
