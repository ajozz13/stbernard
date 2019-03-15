class Admission < ApplicationRecord
  belongs_to :patient
  has_many :diagnosis
  has_many :symptom
  has_many :observation
end
