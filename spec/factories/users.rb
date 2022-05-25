# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { generate(:email) }
    password { "password" }
    password_confirmation { "password" }
  end
end
