class Appointment < ApplicationRecord
  belongs_to :user

  validates_datetime :date, :on => :create, :on => :update, :on_or_after => :today
  validates :date, presence: true
  validates :date, uniqueness: true
end
