class DonorsController < ApplicationController
	def edit
		@program = Program.find(params[:program_id])
		@donor = @program.donors.find(params[:id])
	end

	def show
		@program = Program.find(params[:program_id])
		@donor = @program.donors.find(params[:id])
	end

	def create
		@program = Program.find(params[:program_id])
		@donor = @program.donors.create(donor_params)
		redirect_to program_path(@program)
	end

	def update
		@program = Program.find(params[:program_id])
		@donor = @program.donors.find(params[:id])
	
		if @program.donors.update(donor_params)
			redirect_to program_path(@program)
		else
			render 'edit'
		end
	end

	def destroy
		@program = Program.find(params[:program_id])
		@donor = @program.donors.find(params[:id])
		@donor.destroy

		redirect_to program_path(@program)
	end

	private
		def donor_params
			params.require(:donor).permit(:donor)
		end
end
