class MedicationRoute < ApplicationRecord
  enum route: [ :po, :im, :sc ]
end
