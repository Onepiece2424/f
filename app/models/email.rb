class Email < ApplicationRecord
  validates :to, presence: true
  validates :from, presence: true
  validates :subject, presence: true
  validates :body, presence: true
  validates :send_at, presence: true
end
