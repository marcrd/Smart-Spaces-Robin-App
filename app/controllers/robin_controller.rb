 #require 'excon'
 require 'json'

class RobinController < ApplicationController 

  respond_to :json, :xml
  include ActionController::Live
  def index

  first_one = Excon.get('https://api.robinpowered.com/v1.0/spaces/767/presence', :persistent => true, :headers => {'Authorization' => 'Access-Token BSBfVA8cX8PEUuzEDWdSZLfCHBxJP3eStIa01ka9PK9CHQyVAbM94j051g0epEtY6sLhe9Tv8Cw7z5MPzYNlQoUOiM8cqx7wVnyTZXFm3N9Ecs73CYmuavp8buPSW3sK'})
  second_one = Excon.get('https://api.robinpowered.com/v1.0/spaces/763/presence', :persistent => true, :headers => {'Authorization' => 'Access-Token BSBfVA8cX8PEUuzEDWdSZLfCHBxJP3eStIa01ka9PK9CHQyVAbM94j051g0epEtY6sLhe9Tv8Cw7z5MPzYNlQoUOiM8cqx7wVnyTZXFm3N9Ecs73CYmuavp8buPSW3sK'})
  third_one = Excon.get('https://api.robinpowered.com/v1.0/spaces/755/presence', :persistent => true, :headers => {'Authorization' => 'Access-Token BSBfVA8cX8PEUuzEDWdSZLfCHBxJP3eStIa01ka9PK9CHQyVAbM94j051g0epEtY6sLhe9Tv8Cw7z5MPzYNlQoUOiM8cqx7wVnyTZXFm3N9Ecs73CYmuavp8buPSW3sK'})
  fourth_one = Excon.get('https://api.robinpowered.com/v1.0/spaces/758/presence', :persistent => true, :headers => {'Authorization' => 'Access-Token BSBfVA8cX8PEUuzEDWdSZLfCHBxJP3eStIa01ka9PK9CHQyVAbM94j051g0epEtY6sLhe9Tv8Cw7z5MPzYNlQoUOiM8cqx7wVnyTZXFm3N9Ecs73CYmuavp8buPSW3sK'})
  fifth_one = Excon.get('https://api.robinpowered.com/v1.0/spaces/759/presence', :persistent => true, :headers => {'Authorization' => 'Access-Token BSBfVA8cX8PEUuzEDWdSZLfCHBxJP3eStIa01ka9PK9CHQyVAbM94j051g0epEtY6sLhe9Tv8Cw7z5MPzYNlQoUOiM8cqx7wVnyTZXFm3N9Ecs73CYmuavp8buPSW3sK'})
  sixth_one = Excon.get('https://api.robinpowered.com/v1.0/spaces/764/presence', :persistent => true, :headers => {'Authorization' => 'Access-Token BSBfVA8cX8PEUuzEDWdSZLfCHBxJP3eStIa01ka9PK9CHQyVAbM94j051g0epEtY6sLhe9Tv8Cw7z5MPzYNlQoUOiM8cqx7wVnyTZXFm3N9Ecs73CYmuavp8buPSW3sK'})
  seventh_one = Excon.get('https://api.robinpowered.com/v1.0/spaces/765/presence', :persistent => true, :headers => {'Authorization' => 'Access-Token BSBfVA8cX8PEUuzEDWdSZLfCHBxJP3eStIa01ka9PK9CHQyVAbM94j051g0epEtY6sLhe9Tv8Cw7z5MPzYNlQoUOiM8cqx7wVnyTZXFm3N9Ecs73CYmuavp8buPSW3sK'})
  eighth_one = Excon.get('https://api.robinpowered.com/v1.0/spaces/767/presence', :persistent => true, :headers => {'Authorization' => 'Access-Token BSBfVA8cX8PEUuzEDWdSZLfCHBxJP3eStIa01ka9PK9CHQyVAbM94j051g0epEtY6sLhe9Tv8Cw7z5MPzYNlQoUOiM8cqx7wVnyTZXFm3N9Ecs73CYmuavp8buPSW3sK'})


  @robin_json_one = first_one.body
  @robin_json_two = second_one.body
  @robin_json_three = third_one.body
  @robin_json_four = fourth_one.body
  @robin_json_five = fifth_one.body
  @robin_json_sixth = sixth_one.body
  @robin_json_seventh = seventh_one.body
  @robin_json_eight = eighth_one.body

  @data_one = JSON.parse(@robin_json_one);
  @data_two = JSON.parse(@robin_json_two);
  @data_three = JSON.parse(@robin_json_three);
  @data_four = JSON.parse(@robin_json_four);
  @data_five = JSON.parse(@robin_json_five);
  @data_six = JSON.parse(@robin_json_sixth);
  @data_seven = JSON.parse(@robin_json_seventh);
  @data_eight = JSON.parse(@robin_json_eight);

# @data= JSON.parse(@robin_json);
#  render :json => @data['data']['']
presence = @data_one['data']

presence.each do |p|
  if p['user']['name'] == 'mrudkows@umass.edu'
    @hello = 'Kitchen'

     
  end
end

presence = @data_two['data']

presence.each do |p|
  if p['user']['name'] == 'mrudkows@umass.edu'
    @hello = 'Living Room'

   
  end
end


presence = @data_three['data']


presence.each do |p|
  if p['user']['name'] == 'mrudkows@umass.edu'
    @hello = 'Mudroom'

  
  end
end


presence = @data_four['data']

presence.each do |p|
  if p['user']['name'] == 'mrudkows@umass.edu'
    @hello = 'Bedroom'

  end
end

presence = @data_five['data']

presence.each do |p|
  if p['user']['name'] == 'mrudkows@umass.edu'
    @hello = 'Basement'

  end
end

presence = @data_six['data']

presence.each do |p|
  if p['user']['name'] == 'mrudkows@umass.edu'
    @hello = 'Attic'

    
  end
end


presence = @data_seven['data']

presence.each do |p|
  if p['user']['name'] == 'mrudkows@umass.edu'
    @hello = 'Office'

    
  end
end



presence = @data_eight['data']

presence.each do |p|
  if p['user']['name'] == 'mrudkows@umass.edu'
    @hello = 'Play Room'


  end
end










  end
end 