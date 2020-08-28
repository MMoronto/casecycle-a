class Patient < ApplicationRecord
  belongs_to :doctor
  belongs_to :case

  def admit_patient
    doctor_accepts_medicaid, doctor_is_qualified = doctor_meets_requirements
    if doctor_accepts_medicaid && doctor_is_qualified
      start_treatment
    elsif doctor_is_qualified && !doctor_accepts_medicaid
      "Sorry. " + not_enough_insurance
    elsif !doctor_is_qualified && doctor_accepts_medicaid
      "Sorry. " + not_qualified_enough
    elsif !doctor_is_qualified && !doctor_accepts_medicaid
      "Sorry. " + not_enough_insurance + " " + not_qualified_enough
    end
  end

  def doctor_meets_requirements
    doctor_accepts_medicaid, doctor_is_qualified = false
    if self.doctor.medicaid >= self.case.medicaid
      doctor_accepts_medicaid = true
    end
    if self.doctor.experience >= self.case.min_experience
      doctor_is_qualified = true
    end
    return [doctor_accepts_medicaid, doctor_is_qualified]
  end
 
end
