require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'user with a valid email should be valid' do
    role = Role.first
    user = User.new(email: 'test@test.com', password_digest: 'test', username: 'testusename', role_id: role.id)
    assert user.valid?
  end
  test 'user with duplicate email should be invalid' do
    role = Role.first
    user = User.new(email: 'MyString1@gmail.com', password_digest: 'test', username: 'testusename', role_id: role.id)
    assert_not user.valid?
  end
  test 'user with a invalid email should be invalid' do
    role = Role.first
    user = User.new(email: 'testtestcom', password_digest: 'test', username: 'testusename', role_id: role.id)
    assert_not user.valid?
  end
end
