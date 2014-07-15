class DevelopersController < ApplicationController

	def index
		@developers = Developer.order(:date => :asc, :time => :asc)
	end

	def show
		@developer = Developer.new
	end

	def new
		@developer = Developer.new
		# @event.admin_user_id = Admin_user.first.id
	end

	def create
		@developer = Developer.create(params.require(:event).permit(:name,:date,:time,:location,:website,:about))
		redirect_to events_path
	end

	def edit
		@developer = Developer.find(params[:id])

	end

	def update
		@developer = Developer.find(params[:id])
		if 
			Devloper.create(param.require(:developer).permit(:name))
			redirect_to events_path
		else
			render 'edit'
		end
	end

	def destroy
		@developer = Developer.find(params[:id])
		@developer.destroy
		redirect_to developers_path
	end
end


