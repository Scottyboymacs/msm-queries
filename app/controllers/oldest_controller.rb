class OldestController < ApplicationController
  def eldest
    @the_oldest = Director.all.where.not({:dob => nil}).order({:dob => :asc}).first
    @oldest_id = @the_oldest[:id]
    @oldest_name = @the_oldest[:name]
    @oldest_dob = @the_oldest[:dob]
    render({ :template => "templates/director_templates/eldest.html.erb"})
  end
end
