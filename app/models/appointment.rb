class Appointment < ApplicationRecord
  belongs_to :mechanical
  belongs_to :steelpainter
  has_one_attached :photo
end
