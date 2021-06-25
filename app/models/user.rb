class User < ApplicationRecord
  validates :username, presence: true, length: { in: 6..50 }
  validates :email, presence: true, format: { with:URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true
end
