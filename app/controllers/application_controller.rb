class ApplicationController < ActionController::API
  
  def encode_token(user)
    JWT.encode({user_id: user.id}, 'super_secret')
  end
  
  def token
    request.headers['Authorization']
  end

  def decoded_token
    begin
      JWT.decode(token, 'super_secret')[0]['user_id']
    rescue
      nil
    end
  end

  def curr_user
    User.find(decoded_token)
  end
end
