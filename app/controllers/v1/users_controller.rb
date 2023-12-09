require 'json_web_token'
require 'bcrypt'

class V1::UsersController < ApplicationController
  include BCrypt
  include AuthenticationConcern
  before_action :authorize_request, except: %i[login signup]

  def login
    @user = User.find_by_email(params[:email])
    if @user
      if Password.new(@user.encrypted_password) == params[:password]
        token = JsonWebToken.encode(user_id: @user.id)
        time = Time.now + 24.hours.to_f
        render json: { token:,
                       exp: time,
                       user_details: UserSerializer.new(@user).serializable_hash[:data][:attributes] }, status: :ok
      else
        render json: { error: 'unauthorized', error_message: ['invalid password'] }, status: :unauthorized
      end
    else
      render json: { error: 'unauthorized', error_message: ['User does not exist'] }, status: :unauthorized
    end
  end

  def signup
    @user = User.new(signup_params)
    @user.image_url ||= 'https://thumbs.dreamstime.com/z/default-avatar-profile-icon-vector-social-media-user-image-182145777.jpg'
    if @user.save
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_f
      render json: { token:,
                     exp: time,
                     user_details: UserSerializer.new(@user).serializable_hash[:data][:attributes] }, status: :ok
    else
      render json: { error: 'forbidden', error_message: @user.errors }, status: :forbidden
    end
  end

  def fetch_current_user
    @user = User.find(@current_user.id)
    render json: { data: UserSerializer.new(@user).serializable_hash[:data][:attributes] }, status: :ok
  end
end
