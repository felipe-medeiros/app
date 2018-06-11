class Service < ApplicationRecord
  belongs_to :business
  validates :name, presence: true
  validates :price, presence: true
end
