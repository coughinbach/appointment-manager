class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
    @doctor = Doctor.find(params[:doctor_id])
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @doctor = Doctor.find(params[:doctor_id])
    @appointment.doctor = Doctor.find(params[:doctor_id])
    if @appointment.save
      redirect_to doctor_path(@appointment.doctor)
    else
      render :new
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @doctor = @appointment.doctor
    @appointment.destroy
    redirect_to doctor_path(@doctor)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :doctor_id, :patient_id)
  end
end
