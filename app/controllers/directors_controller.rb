class DirectorsController < ApplicationController

  def index
    render({ :template => "templates/director_templates/index.html.erb"})
  end


  def display
    @director = params.get("director_name")
    @name = 
    @dob = 
    @image = 
    @bio = 
    @director_id = 
    render({ :template => "templates/director_templates/dynamic.html.erb"})
  end

end
