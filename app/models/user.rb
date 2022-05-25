# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  before_validation :normalize_email

  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: {
                      with: /\A[^@\s]+@[^@\s]+\z/,
                      message: I18n.t("errors.messages.invalid"),
                      allow_blank: true,
                    }

  private

  def normalize_email
    email&.downcase!
  end
end
