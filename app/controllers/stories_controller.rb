class StoriesController < ApplicationController
  def index
  	@stories = Story.all
  	@story = Story.new
  	@template = Template.first(:offset => rand(Template.count))
  	
  	respond_to do |format|
  	  format.html
  	end
  end

  def create
    # 1, 2, 3 => nouns
    # 4 => verb
    # 5, 6 => adjectives
    # 7 => proper_noun
    # 8 => verb_future_tense
    # 9 => verb_past_tense
  	@story = Story.new(params[:story])
    
  	template = params[:empty_template]
  	noun = params[:story]["noun"]
  	noun2 = params[:story]["noun2"]
  	noun3 = params[:story]["noun3"]
    verb = params[:story]["verb"]
    adjective = params[:story]["adjective"]
    adjective2 = params[:story]["adjective2"]
    proper_noun = params[:story]["proper_noun"]
    verb_future_tense = params[:story]["verb_future_tense"]
    verb_past_tense = params[:story]["verb_past_tense"]
 
  	template.gsub!( "1", noun) if noun != nil
    template.gsub!( "2", noun2) if noun2 != nil
    template.gsub!( "3", noun3) if noun3 != nil
    template.gsub!( "4", verb) if verb != nil
    template.gsub!( "5", adjective ) if adjective != nil
    template.gsub!( "6", adjective2 ) if adjective2 != nil
    template.gsub!( "7", proper_noun ) if proper_noun != nil
    template.gsub!( "8", verb_future_tense ) if verb_future_tense != nil
    template.gsub!( "9", verb_past_tense ) if verb_past_tense != nil

    puts "*************"
    puts params
    puts params[:story]["verb"]
    puts template
    puts "*************"
    @story.story = template
    @story.save

  	respond_to do |format|
  	  format.js
  	end
  end

  def show
  end

  def destroy
  	@story = Story.destroy(params[:id])
  	respond_to do |format|
  	  format.js
  	end
  end

end
