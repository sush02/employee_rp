class Employee < ApplicationRecord
  validates :first_name, :last_name, :email, :designation, presence: true
  validates :first_name, length: { minimum: 3, maximum: 25 }, if: -> { first_name.present? }
  validates :first_name, format: { with: /\A[a-zA-z0-9\s]+\z/ }, if: -> { first_name.present? }
  validates :email, uniqueness: true, if: -> { email.present? }
  belongs_to :department
end
