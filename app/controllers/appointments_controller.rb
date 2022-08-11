class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @mechanical = Mechanical.find(params[:mechanical_id])
    @steelpainter = Steelpainter.find(params[:steelpainter_id])
    @appointment = Appointment.new
  end

  def create
    #descrpcion problema
    @appointment = Appointment.new(appointment_params)
    # we need `user_id` to associate appointment with corresponding user
    @mechanical = Mechanical.find(params[:mechanical_id])
    @steelpainter = Steelpainter.find(params[:steelpainter_id])
    @appointment.user = current_user
    @appointment.mechanical = @mechanical
    @appointment.steelpaint = @steelpaint
    @appointment.status = "Pending"
    if @appointment.save
      redirect_to my_profile_path
    else
      render :new
    end
  end

  #falta aceptar y rechazar problema


  def accept_appointment
    @appointment = Appointment.find(params[:id])
    @appointment.status = "Accepted"
    @appointment.save
    redirect_to my_profile_path
  end

  def reject_appointment
    @appointment = Appointment.find(params[:id])
    @appointment.status = "Rejected"
    @appointment.save
    redirect_to my_profile_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :description, :status)
  end
end
