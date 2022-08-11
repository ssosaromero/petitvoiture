class Mechanical < ApplicationRecord
  has_many :appointments
  has_one_attached :photo
end
