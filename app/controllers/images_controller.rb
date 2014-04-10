class ImagesController < ApplicationController
	def index
		@pics = Hello.all
	end

	def show
		@pic = Hello.find(params[:id])
	end

	def new
	end

	def create
		render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end
end