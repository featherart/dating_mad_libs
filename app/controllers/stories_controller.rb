class StoriesController < ApplicationController
  def index
  	@stories = Story.all
  	respond_to do |format|
  	  format.html
  	end
  end

  def create
  	@story = Story.create(params[:story])
  	respond_to do |format|
  	  format.js
  	end
  end

  def destroy
  	@story = Story.destroy(params[:id])
  	respond_to do |format|
  	  format.js
  	end
  end

end
