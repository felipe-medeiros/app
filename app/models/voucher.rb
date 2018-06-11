class Voucher < ApplicationRecord
  belongs_to :business
  validates :code, presence: true
  validates :discount, presence: true
end
