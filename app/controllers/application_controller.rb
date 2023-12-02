class ApplicationController < ActionController::API
  #   protect_from_forgery with: :exception
  include RecordNotFound

  before_action :update_allowed_parameters, if: :devise_controller?

  def not_found
    render json: { error: 'not_found' }
  end

  def authorize_request
    header = request.headers['Authorization']
    header = header.split.last if header

    @decoded = decode_header(header)
    @current_user = find_user_by_decoded_id(@decoded[:user_id])
  rescue ActiveRecord::RecordNotFound, JWT::DecodeError => e
    render json: { errors: e.message }, status: :unauthorized
  end

  private

  def decode_header(header)
    JsonWebToken.decode(header)
  end

  def find_user_by_decoded_id(user_id)
    User.find(user_id)
  end

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name, :photo, :password, :password_confirmation, :email)
    end
    # devise_parameter_sanitizer.permit(:account_update) do |u|
    #   u.permit(:Name, :Bio, :Photo, :password, :password_confirmation, :email, :current_password)
    # end
  end
end
