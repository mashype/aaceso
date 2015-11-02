class PatientrelationsController < ApplicationController

	before_action :find_patientrelation, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@patientrelation = Patientrelation.all.order("created_at DESC")
	end

	def show
	end

	def new
		@patientrelation = Patientrelation.new
	end

	def create
		@patientrelation = Patientrelation.new(patientrelation_params)

		if @patientrelation.save
			redirect_to @patientrelation, notice: "Successfully created relationship"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @patientrelation.update(patientrelation_params)
			redirect_to @patientrelation
		else
			render 'edit'
		end
	end

	def destroy
		@patientrelation.destroy
		redirect_to root_path, notice: "Successfully deleted relationship"
	end

	private

		def patientrelation_params
			params.require(:patientrelation). permit(:patient_id, :provider_id, :patientrelationtypes_id)
		end

		def find_patientrelation
			@patientrelation = Patientrelation.find(params[:id])
		end
end

