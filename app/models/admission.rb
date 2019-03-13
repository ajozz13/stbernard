class Admission < ApplicationRecord
  has_many :diagnosis
  has_many :symptom
  has_many :observation 
end
