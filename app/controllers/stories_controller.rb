class StoriesController < ApplicationController
  def index
  	@stories = Story.all
  	@story = Story.new
  	@template = Template.first(:offset => rand(Template.count))
  	
  	#binding.pry
  	respond_to do |format|
  	  format.html
  	end
  end

  def create
  	#@story = Story.create(params[:story])
  
  	template = params[:empty_template]
  	noun = params[:noun]
  	noun2 = params[:noun2]
  	noun3 = params[:noun3]
  	puts "$$$$$$$$$$$$$$"
  	puts template
  	puts params[:noun]
  	puts template.gsub!("noun", "hairball")
  	puts "*************"
  	#@whole_story = template.gsub("noun", noun)
 
  	#@story = Story.create({"noun"=>"asf", "story"=>@whole_story})
  	#@sentence = params[:story]

  	#binding.pry
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
