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

  def logged_in?
    !!curr_user
  end

  def curr_user
    user_id = decoded_token
    # Need to ensure that curr_user won't break if decode_token returns nil, because
    # User.find(nil) will break
    if user_id
      User.find(decoded_token)
    else
      nil
    end
  end
end
