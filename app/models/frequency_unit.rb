class FrequencyUnit < ApplicationRecord
  enum hour: [ :hourly, :half_hour, :fifteen_minutes ]
end
