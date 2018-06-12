class Schedule < ApplicationRecord
  belongs_to :customer
  belongs_to :business
  belongs_to :car
  has_many :schedule_service
end
