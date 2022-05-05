class YoungestController < ApplicationController
  def youngest
   @the_youngest = Director.all.where.not({:dob => nil}).order({:dob => :desc}).first
    @youngest_id = @the_youngest[:id]
    @youngest_name = @the_youngest[:name]
    @youngest_dob = @the_youngest[:dob]
    render({ :template => "templates/director_templates/youngest.html.erb"})
  end
end
