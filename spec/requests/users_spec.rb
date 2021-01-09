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

    it 'returns error if user not exists' do
      get "/api/v1/users/#{100}"
      expect(response).to have_http_status(:no_content)
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
      role = Role.create(name: 'admin')
      post '/api/v1/users',
        params: {
          user: {
            email: 'test7777@test.com',
            password: 'test7777',
            password_digest: 'test7777',
            username: 'test7777',
            role_id: role.id
          }
        }
      expect(response).to have_http_status(:created)
    end
    it 'should not create a new user with taken email' do
      role = Role.create(name: 'admin')
      
      FactoryBot.create(:user, email: 'test7777@test.com', password_digest: 'test7777', username: 'testXXXX',
        role_id: role.id)

      post '/api/v1/users',
        params: {
          user: {
            email: 'test7777@test.com',
            password: 'test7777',
            password_digest: 'test7777',
            username: 'test7777',
            role_id: role.id
          }
        }
      expect(response).to have_http_status(:unprocessable_entity)
    end

    it 'should not create a new user with taken username' do
      role = Role.create(name: 'admin')
      
      FactoryBot.create(:user, email: 'test7777@test.com', password_digest: 'test7777', username: 'rpaz',
        role_id: role.id)

      post '/api/v1/users',
        params: {
          user: {
            email: 'testXXXX@test.com',
            password: 'test7777',
            password_digest: 'test7777',
            username: 'rpaz',
            role_id: role.id
          }
        }
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end

  describe 'PATCH /users' do 
    it 'should update a existing user' do
      role = Role.create(name: 'admin')
      

      FactoryBot.create(:user, email: 'raul@gmail.com', password_digest: '1234567890', username: 'raul',
        role_id: role.id)
      
      user = User.first

      patch "/api/v1/users/#{user.id}",
        params: {
          user: {
            email: 'pedro@test.com',
            password: 'test7777',
            password_digest: 'test7777',
            username: 'pedro',
            role_id: role.id
          }
        }
      expect(response).to have_http_status(:success)
    end    
  end
end
