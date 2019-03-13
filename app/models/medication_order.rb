class MedicationOrder < ApplicationRecord
  has_one :mass_unit
  has_one :medication_route
  has_one :order_frequency
end
