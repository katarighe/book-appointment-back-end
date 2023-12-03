require 'rails_helper'

RSpec.describe 'v1/users/signup', type: :request do
  describe 'POST /create' do
    context 'with valid parameters' do
      it 'returns the token and user info' do
        post v1_users_signup_path, params: { name: 'test', email: 'test@test.com', password: 'helloWORLD' }
        body = response.parsed_body
        expect(body['token']).to_not be nil
        expect(body['exp']).to_not be nil
        expect(body['user_details']).to_not be nil
        expect(body['user_details']['email']).to eq('test@test.com')
        expect(body['user_details']['name']).to eq('test')
      end
    end

    context 'with invalid parameters : User with the same email already created' do
      it 'return message error' do
        user = User.create(name: 'test', email: 'test@test.com', password: 'helloWORLD')
        post v1_users_signup_path, params: { name: 'test', email: 'test@test.com', password: 'helloWORLD' }
        body = response.parsed_body
        expect(body['error']).to eq('unauthorized')
        expect(body['error_message']['email']).to eq(['has already been taken'])
        user.destroy
      end
    end

    context 'with invalid parameters: Name is nil' do
      it 'returns a validation error for name' do
        post v1_users_signup_path, params: { name: nil, email: 'test@test.com', password: 'helloWORLD' }
        body = response.parsed_body
        expect(response).to have_http_status(:unauthorized)
        expect(body['error']).to eq('unauthorized')
        expect(body['error_message']['name']).to eq(['can\'t be blank', 'is too short (minimum is 3 characters)'])
      end
    end

    context 'with invalid parameters: Email is nil' do
      it 'returns a validation error for email' do
        post v1_users_signup_path, params: { name: 'test', email: nil, password: 'helloWORLD' }
        body = response.parsed_body
        expect(response).to have_http_status(:unauthorized)
        expect(body['error']).to eq('unauthorized')
        expect(body['error_message']['email']).to eq(['can\'t be blank'])
      end
    end

    context 'with invalid parameters : Password is nil' do
      it 'return message error' do
        post v1_users_signup_path, params: { name: 'test', email: 'test@test.com', password: '' }
        body = response.parsed_body
        expect(body['error']).to eq('unauthorized')
        expect(body['error_message']['password']).to eq(['can\'t be blank', 'is too short (minimum is 6 characters)'])
      end
    end

    context 'with more parameters' do
      it 'returns the token and user info, other parameters are ignored' do
        post v1_users_signup_path,
             params: { name: 'test', email: 'test@test.com', password: 'helloWORLD', confirm_password: 'hello' }
        body = response.parsed_body
        expect(body['token']).to_not be nil
        expect(body['exp']).to_not be nil
        expect(body['user_details']).to_not be nil
        expect(body['user_details']['email'])
          .to eq('test@test.com')
        expect(body['user_details']['name']).to eq('test')
        expect(body['user_details']['confirm_password']).to be nil
      end
    end
  end
end
