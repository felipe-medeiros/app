class Car < ApplicationRecord
  belongs_to :customer
  validate :plate_valid
  validates :plate, uniqueness: true, length: { minimum: 7 }

  private

    def plate_valid
      self.plate = self.plate.strip.delete('-.').upcase
    end
end
