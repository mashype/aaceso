class PatientsController < ApplicationController

	before_action :find_patient, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@patients = Patient.all.order("created_at DESC")
	end

	def show
		@patient = Patient.find(params[:id])
	end

	def new
		@patients = Patient.new
	end

	def create
		@patients = Patient.new(provider_params)

		if @patients.save
			redirect_to @patients, notice: "Successfully created new patient"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @patients.update(patient_params)
			redirect_to @patients
		else
			render 'edit'
		end
	end

	def destroy
		@patients.destroy
		redirect_to root_path, notice: "Successfully deleted patient"
	end

	def full_name
    "#{first_name} #{last_name}"
  end

	private

		def patient_params
			params.require(:patient). permit(:first_name, :last_name, :full_name, :member_id)
		end

		def find_patient
			@provider = Patient.find(params[:id])
		end

end
