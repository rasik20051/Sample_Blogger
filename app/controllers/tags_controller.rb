class TagsController < ApplicationController

	def show
		@tag=Tag.find(params[:id])
	end

	def index
		@tag=Tags.all
	end
end
