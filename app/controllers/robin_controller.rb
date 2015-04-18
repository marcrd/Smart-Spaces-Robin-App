# Don't remove this
require 'json'

class RobinController < ApplicationController 

  respond_to :json, :xml 
  include ActionController::Live # This is included if you want to create long polling 
  def index

    



  # Replace $spaceid with the space ID you'd like to use, and the auth token with your auth token
  excon_one = Excon.get('https://api.robinpowered.com/v1.0/spaces/$spaceid/presence', :persistent => true, :headers => {'Authorization' => 'Auth Token'})
  excon_one = Excon.get('https://api.robinpowered.com/v1.0/spaces/$spaceid/presence', :persistent => true, :headers => {'Authorization' => 'Auth Token'})


  # Call a JSON variable so we can parse it
  @robin_json_one = excon_one.body
  @robin_json_one = excon_two.body
  
  # Actually parse the the variable from JSON into a string
  @data_one = JSON.parse(@robin_json_one);
  @data_two = JSON.parse(@robin_json_two);
 

# Start off with first set of Data for the beacon
presence = @data_one['data']


# Set these variables to what you want. I just put in random variables
presence.each do |p|
  if p['user']['name'] == 'user_name'
      @room = 'Kitchen'
      @optionOne = 'Food Network'
      @optionTwo = 'Recipe App'
      @optionThree = 'Wine Mixer App'
     
  end
end

# Example of a second loop with a different presence
presence = @data_two['data']

presence.each do |p|
  if p['user']['name'] == 'user_name'
      @room = 'Living Room'
      @optionOne = 'Netflix'
      @optionTwo = 'XBOX One'
      @optionThree = 'Wii U'
   
  end
end





  end
end 