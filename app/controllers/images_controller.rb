class ImagesController < ApplicationController
	def index
		@pics = Hello.all
	end

	def show
		@pic = Hello.find(params[:id])
	end

	def new
		@pic = Hello.new
	end

	def create
		@pic = Hello.new(image_params)
		if @pic.save
			redirect_to images_url
		else
			render :new
		end
	end

	def edit
		@pic = Hello.find(params[:id])
	end

	def update
		@pic = Hello.find(params[:id])

		if @pic.update_attributes(image_params)
			redirect_to "/images/#{@pic.id}"
		else
			render :edit
		end
	end

	private
	def image_params
		params.require(:hello).permit(:artist, :title, :url)
	end
end