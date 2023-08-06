class Plant < ApplicationRecord
  validates :name, presence: true
  validates :moisture_level, presence: true, length: {minimum: 1, maximum: 3}, comparison: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :water_pump_status, inclusion: {in: [true, false]}
  validates :battery_level, presence: true, length: {minimum: 1, maximum: 3}, comparison: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
end
