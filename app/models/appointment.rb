class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  validates :date, :doctor, :patient, presence: true
end
