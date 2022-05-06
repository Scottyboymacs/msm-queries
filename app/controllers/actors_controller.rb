class ActorsController < ApplicationController
  def list
    @actor_list = Actor.all
    render({ :template => "templates/actor_templates/actor_list.html.erb"})
  end

  def actor_details
      @actor_id = params.fetch("actor_id")
      @actor_list = Actor.all
      this_actor = @actor_list.where( {:id => @actor_id })
 
      @name = this_actor[0][:name]
      @dob = this_actor[0].fetch(:dob)
      @image = "http://robohash.org/#{@title}"
      @bio = this_actor[0].fetch(:bio)

      @character_list = Character.all
      @actor_characters = @character_list.where( {:actor_id => @actor_id})
      #^ returns a ActiveRecord relation of all the characters he has played
      
      @character_ids = []
      @actor_characters.each do |character|
        @character_ids.push(character.id)
      end
      
      @movie_list = Movie.all
      #@filmography_movies =  @movie_list.where( {:id => @})
      
      @director_list = Director.all
    render({ :template => "templates/actor_templates/dynamic_actor.html.erb"})
  end

end
