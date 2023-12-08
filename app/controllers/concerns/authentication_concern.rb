# app/controllers/concerns/authentication_concern.rb
module AuthenticationConcern
  extend ActiveSupport::Concern

  private

  def signup_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end
