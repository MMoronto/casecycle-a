class CasesController < ApplicationController
  def index
    @treatment = Treatment.all
  end

  def show
    @treatment = Treatment.find_by(id: params[:id])
    @patient = @treatment.patients.build(doctor_id: current_doctor.id)
  end

  def new
    @treatment = Treatment.new
  end

  def create
    treatment = Treatment.create(treatment_params)
    redirect_to treatment_path(treatment)
  end

  def edit
    @treatment = Treatment.find_by(id: params[:id])
    @patient = @treatment.patients.build(doctor_id: current_doctor.id)
  end

  def update
    treatment = Treatment.find_by(id: params[:id])
    treatment.update(treatment_params)
    redirect_to treatment_path(case)
  end

  private
  def treatment_params
    params.require(:treatment).permit(
      :casenum,
      :name,
      :insurance,
      :treatmentplan
    )
  end
end
