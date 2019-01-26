class Client < ApplicationRecord
  include ActiveModel::Validations

  belongs_to :user

  # has_many :appointments
  # has_many :weight_histories
  # has_many :users, through: :appointments
  # has_many :notes
  
  validates :name, :email, :phone, :age, :weight, :goal, presence: true
  validates :email, uniqueness: true, email: true
  validates :age, numericality: { greater_than: 0, less_than: 100 }
  validates :weight, numericality: { greater_than: 0 }
  validates :phone, phone: true
end
