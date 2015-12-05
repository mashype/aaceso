class PatientsController < ApplicationController

	before_action :find_patient, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@patient = Patient.all.order("created_at DESC")
	end

	def show
		@patient = Patient.find(params[:id])
	end

	def new
		@patient = current_user.patients.build
	end

	def create
		@patient = current_user.patients.build(patient_params)

		if @patient.save
			redirect_to @patient, notice: "Successfully created new patient record"
		els
			render 'new'
		end
	end

	def edit
	end

	def update
		if @patient.update(patient_params)
			redirect_to @patient
		else
			render 'edit'
		end
	end

	def destroy
		@patient.destroy
		redirect_to root_path, notice: "Successfully deleted patient"
	end

	private

		def patient_params
			params.require(:patient). permit(:first_name, :last_name, :member_id, :user_id, :image)
		end

		def find_patient
			@patient = Patient.find(params[:id])
		end

end
