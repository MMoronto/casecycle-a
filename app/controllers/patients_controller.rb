class PatientsController < ApplicationController
  def create
    patient = patient.create(patient_params)
    message = patient.take_patient
    redirect_to doctor_path(patient.doctor), flash: { message: message }
  end

  private

  def patient_params
    params.require(:patient).permit(
    :doctor_id,
    :attraction_id
    )
  end
end
