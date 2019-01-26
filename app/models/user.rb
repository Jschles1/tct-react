class User < ApplicationRecord
  include ActiveModel::Validations

  has_many :appointments
  has_many :clients

  validates :name, :email, presence: true
  validates :email, uniqueness: true, email: true
  validates :password, length: { minimum: 8 }
  # has_secure_password
end
