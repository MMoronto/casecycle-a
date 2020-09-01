class SessionController < ApplicationController
  skip_before_action :verified_doctor, only: [:new, :create]

  def new
    @doctor = Doctor.new
  end

  def create
    if @doctor = Doctor.find_by(name: params[:doctor][:name])
      session[:doctor_id] = @doctor.id
      redirect_to doctor_path(@doctor)
    else
      render 'new'
    end
  end

  def destroy
    session.delete("doctor_id")
    redirect_to root_path
  end
end
