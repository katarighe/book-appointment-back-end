class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include ActionController::ImplicitRender
  include ActionController::RequestForgeryProtection
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  before_action :update_allowed_parameters, if: :devise_controller?

  def not_found
    render json: { error: 'not_found' }, status: :not_found
  end

  def authorize_request
    header = request.headers['Authorization']
    header = header.split.last if header
    @decoded = JsonWebToken.decode(header)
    @current_user = User.find(@decoded[:user_id])
  rescue ActiveRecord::RecordNotFound => e
    render_unauthorized(e.message)
  rescue JWT::DecodeError => e
    render_unauthorized(e.message)
  end

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :photo, :password, :password_confirmation, :email])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:Name, :Bio, :Photo, :password, :password_confirmation, :email, :current_password])
  end

  def render_unauthorized(message)
    render json: { errors: message }, status: :unauthorized
  end
end
