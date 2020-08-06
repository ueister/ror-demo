class DonationsController < ApplicationController
	def create
		@donor = Donor.find(params[:donor_id])
		@donation = @donor.donations.create(donation_params)
		redirect_to program_donor_path(:id=>params[:donor_id], :program_id => @donor.program_id)
	end

	def destroy
		@donor = Donor.find(params[:donor_id])
		@donation = @donor.donations.find(params[:id])
		@donation.destroy

		redirect_to program_donor_path(:id=>params[:donor_id], :program_id => @donor.program_id)
	end

	private
		def donation_params
			params.require(:donation).permit(:amount)
		end
end
