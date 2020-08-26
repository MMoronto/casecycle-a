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
    @patient = @case.patients.builder(doctor_id: current_doctor.id)
  end

  def edit

  end

  def update

  end
end
