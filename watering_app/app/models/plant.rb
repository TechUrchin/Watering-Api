class Plant < ApplicationRecord
  validates :name, presence: true
  validates :moisture_level, presence: true, length: {minimum: 1, maximum: 3}
  validates :water_pump_status, presence: true
  validates :battery_level, presence: true, length: {minimum: 1, maximum: 3}
end
