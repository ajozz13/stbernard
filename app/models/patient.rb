class Patient < ApplicationRecord
  has_many :admissions
  has_many :allergies
  has_many :diagnoses, through: :admissions
  has_many :symptoms, through: :admissions
  has_many :medication_orders
  has_many :diagnostic_procedures
  has_many :treatments
  has_many :observations
end