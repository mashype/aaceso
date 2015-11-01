class AppointmentsController < ApplicationController

	before_action :find_appointment, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
	
	def index
		@appointment = Appointment.all.order("created_at DESC")
	end

	def show
	end

	def new
		@appointment = Appointment.new
	end

	def create
		@appointment = Appointment.new(appointment_params)

		if @appointment.save
			redirect_to @appointment, notice: "Successfully created new appointment"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @appointment.update(appointment_params)
			redirect_to @appointment
		else
			render 'edit'
		end
	end

	def destroy
		@appointment.destroy
		redirect_to root_path, notice: "Successfully deleted appointment"
	end

	private

		def appointment_params
			params.require(:appointment). permit(:appointmenttype, :apptconfirmed, :apptcompleted, :provider_id, :patient_id)
		end

		def find_appointment
			@appointment = Appointment.find(params[:id])
		end

end
