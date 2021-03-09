class ApplicationController < ActionController::Base
#create a token for us

  # def encode_token(payload)
  # JWT.endcode(payload, "Whatever")
  #hide in local env
  # end 

  #decodes 

  
  # def decode_token(token)
  #JWT.decode(token, "Whatever")
  # end 


  end

# jwt allows us to encode specific info in this case we want to encode the ID of the user. 
# it makes it a unreadable token that we can use authorize the user 
#jwt comes back with 1 different methods.. JWT.encode (payload, secret) => creates a token for use to use and send to frontend 
#{id: user.id}
# jwt comes with JWT.decode(token, secret)
# User.find(JWT.decode(token, secret))