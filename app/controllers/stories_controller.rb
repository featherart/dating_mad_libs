class StoriesController < ApplicationController
  include StoriesHelper

  def index
    @stories = Story.paginate(page: params[:page], per_page: 6).order('created_at DESC') 
  	@story = Story.new
  	@template = Template.first(:offset => rand(Template.count))
  	
  	respond_to do |format|
  	  format.html
  	end
  end

  def create
  	@story = Story.new(params[:story])
    @story.story = make_story
    @story.save

    render layout: false
  end

  def show
  end

  def destroy
    if (params[:id]) != nil
  	  @story = Story.destroy(params[:id])
    end
    # get a random story to fill the void when 
    # one gets destroyed - it might be better to 
    # get the last story in the list so there aren't 
    # any repeats
    @added_story = Story.last

    until @added_story.id != nil
      @added_story = Story.last 
    end

    binding.pry
 
  	respond_to do |format|
  	  format.js
  	end
  end

  def select_random_template
    @story = Story.new
    @template = Template.first(:offset => rand(Template.count))
  end

end
