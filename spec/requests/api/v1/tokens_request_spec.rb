require 'rails_helper'

RSpec.describe "Api::V1::Tokens", type: :request do

  describe "GET /create" do
    it "returns http success" do
      role = Role.create(name: 'patient')
      FactoryBot.create(:user, email: 'test9999@test.com', password_digest: BCrypt::Password.create('1234567890'), username: 'test7777',
                               role_id: role.id)
      post "/api/v1/tokens",
        params: {
          user: {
            username: 'test7777',
            password: '1234567890',
          }
        }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "should not get JWT token" do
      role = Role.create(name: 'patient')
      FactoryBot.create(:user, email: 'test9999@test.com', password_digest: BCrypt::Password.create('1234567890'), username: 'test7777',
                               role_id: role.id)
      post "/api/v1/tokens",
        params: {
          user: {
            username: 'test77778',
            password: '1234567890',
          }
        }
      expect(response).to have_http_status(:unauthorized)
    end
  end

end
