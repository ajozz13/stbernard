class MedicationOrder < ApplicationRecord
  has_one :order_frequency
  enum route: [ :po, :im, :sc ]
  enum unit: [ :mg, :g ]
end
