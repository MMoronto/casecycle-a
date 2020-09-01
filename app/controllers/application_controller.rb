class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :verified_doctor
  helper_method :current_doctor

  private

  def verified_doctor
    redirect_to '/' unless doctor_is_authenticated
  end

  def doctor_is_authenticated
    !!current_doctor
  end

  def current_doctor
    Doctor.find_by(id: session[:doctor_id])
  end
end
