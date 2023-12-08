 # app/controllers/v1/admin_users_controller.rb
class V1::AdminUsersController < ApplicationController
  include AuthenticationConcern
  before_action :authorize_request, except: %i[login signup]

  def signup
    @admin_user = User.new(signup_params.merge(role: 'admin'))
    if @admin_user.save
      token = JsonWebToken.encode(user_id: @admin_user.id)
      time = Time.now + 24.hours.to_f
      render json: {
        token:,
        exp: time,
        user_details: UserAdminSerializer.new(@admin_user).serializable_hash[:data][:attributes]
      }, status: :ok
    else
      render json: { error: 'forbidden', error_message: @admin_user.errors }, status: :forbidden
    end
  end

  def login
    # Empty action
  end
end
