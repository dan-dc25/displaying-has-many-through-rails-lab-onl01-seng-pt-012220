class AppointmentsController < ApplicationController
    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.create(appt_params)
        redirect_to appointment_path
    end

    private

    def appt_params
        params.require(:appointment).permit(:patient_id, :doctor_id, :appointment_datetime)
    end
end
