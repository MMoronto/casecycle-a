class DoctorsController < ApplicationController
  # skip_before_action :verified_doctor, only: [:new, :create]

  def new
    @doctor = Doctor.new
  end

  def create
    if (doctor = Doctor.create(doctor_params))
      session[:doctor_id] = doctor.id
      redirect_to doctor_path(doctor)
    else
      render 'new'
    end
  end

  def show
    @doctor = Doctor.find_by(id: params[:id])
  end

  private

  def doctor_params
    params.require(:doctor).permit(
      :name,
      :specialty,
      :admin,
      :password
    )
  end
end
