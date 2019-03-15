class OrderFrequency < ApplicationRecord
  enum unit: [ :hour, :half_hour, :fifteen_minutes ]
end
