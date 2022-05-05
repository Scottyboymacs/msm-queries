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
    render({ :template => "templates/actor_templates/dynamic_actor.html.erb"})
  end

end
