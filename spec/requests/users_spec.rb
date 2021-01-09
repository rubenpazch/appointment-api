require 'rails_helper'

describe 'Users API', type: :request do
  describe 'GET /users' do
    it 'returns user by id' do
      role = Role.create(name: 'patient')
      User.create(email: 'test@test.com', password_digest: 'test', username: 'testusename', role_id: role.id)
      user = User.first
      get "/api/v1/users/#{user.id}"
      expect(response).to have_http_status(:success)
    end

    it 'returns user size' do
      role = Role.create(name: 'patient')
      FactoryBot.create(:user, email: 'test9999@test.com', password_digest: 'test9999', username: 'test9999',
                               role_id: role.id)
      FactoryBot.create(:user, email: 'test8888@test.com', password_digest: 'test8888', username: 'test8888',
                               role_id: role.id)
      get '/api/v1/users'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(2)
    end
  end

  describe 'POST /users' do
    it 'should create a new user' do
      role = Role.create(name: 'patient')
      post '/api/v1/users',
           params: { user: { email: 'test8888@test.com', password_digest: 'test8888', username: 'test8888',
                             role_id: role.id } }
    end
  end
end
