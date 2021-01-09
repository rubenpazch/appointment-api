require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  test 'role with a valid name should be valid' do
    role = Role.new(name: 'patient')
    assert role.valid?
  end
  test 'role with a invalid name should be invalid' do
    role = Role.new(name: '')
    assert_not role.valid?
  end
end
