class CasesController < ApplicationController
  def index
    @cases = Case.all
  end

  def create
    case = Case.create(case_params)
    redirect_to case_path(case)
  end

  def new
    @case = Case.new
  end

  def show
    @case = Case.find_by(id: params[:id])
    @patient = @case.patients.build(doctor_id: current_doctor.id)
  end

  def edit
    @case = Case.find_by(id: params[:id])
    @patient = @case.patients.build(doctor_id: current_doctor.id)
  end

  def update
    case = Case.find_by(id: params[:id])
    case.update(case_params)
    redirect_to case_path(case)
  end

  private
    def case_params
      params.require(:case).permit(
        :casenum,
        :name,
        :insurance,
        :treatmentplan
      )
    end
end
