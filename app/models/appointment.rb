class Appointment < ApplicationRecord
  belongs_to :mechanical
  belongs_to :steelpainter
end
