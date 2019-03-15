class OrderFrequency < ApplicationRecord
  belongs_to :medication_order
  enum unit: [ :hour, :half_hour, :fifteen_minutes ]
end
