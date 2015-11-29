class ProvidersController < ApplicationController
	before_action :find_provider, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
	

  def search
    if params[:search].present?
      @providers = Provider.search(params[:search])
    else
      @providers = Provider.all
    end
  end


	def index
		@provider = Provider.all.order("created_at DESC")
	end

	def show
	end

	def new
		@provider = current_user.providers.build
	end

	def create
		@provider = current_user.providers.build(provider_params)

		if @provider.save
			redirect_to @provider, notice: "Successfully created new provider"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @provider.update(provider_params)
			redirect_to @provider
		else
			render 'edit'
		end
	end

	def destroy
		@provider.destroy
		redirect_to root_path, notice: "Successfully deleted provider"
	end

	private

		def provider_params
			params.require(:provider). permit(:name, :npi, :user_id, :specialty, :specialty_id, :image, 
				patientrelations_attributes: [:id, :provider_id, :patient_id, :patientrelationtypes_id, :_destroy, patient_attributes: [:id, :first_name, :last_name, :member_id, :_destroy]], 
				locations_attributes: [:id, :street_1, :street_2, :city, :state, :zip, :loc_type, :_destroy], 
				licexpirations_attributes: [:id, :provider_id, :license_id, :expiration_year, :_destroy, license_attributes: [:id, :state, :_destroy]])
		end

		def find_provider
			@provider = Provider.find(params[:id])
		end

end
