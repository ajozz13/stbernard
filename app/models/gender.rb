class Gender < ApplicationRecord
  enum gender: [ :male, :female, :other ]
end
