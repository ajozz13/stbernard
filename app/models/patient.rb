class Patient < ApplicationRecord
  belongs_to :facility
  has_many :admissions
  has_many :allergies
  has_many :admissions
  has_many :medication_orders
  has_many :diagnostic_procedures
  has_many :treatments
  has_many :diagnoses, through: :admissions
  has_many :symptoms, through: :admissions
  has_many :observations, through: :admissions
end
