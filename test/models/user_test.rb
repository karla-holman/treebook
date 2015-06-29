require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "a user should enter a first name" do
  		# create a new user variable (instance of User class)
  		user = User.new

  		# assertion = guarantees that certain value is occuring in our test
  		# make sure save returns false (not successful)# make sure save returns false (not successful)
  		assert !user.save

  		# make sure no errors on first_name field
  		assert !user.errors[:first_name].empty?
  end

  test "a user should enter a last name" do
  		# create a new user variable (instance of User class)
  		user = User.new

  		# assertion = guarantees that certain value is occuring in our test
  		# make sure save returns false (not successful)
  		assert !user.save

  		# make sure no errors on last_name field
  		assert !user.errors[:last_name].empty?
  end

  test "a user should enter a profile name" do
  		# create a new user variable (instance of User class)
  		user = User.new

  		# assertion = guarantees that certain value is occuring in our test
  		# make sure save returns false (not successful)
  		assert !user.save

  		# make sure no errors on profile_name field
  		assert !user.errors[:profile_name].empty?
  end

  test "a user should have a unique profile name" do
  		user = User.new
  		user.profile_name = users(:karla).profile_name
  		assert !user.save
  		assert !user.errors[:profile_name].empty?
  end

  test "a user should havbe a profile name without spaces" do
  		user = User.new
  		user.profile_name = "My Profile name with spaces"

  		assert !user.save
  		assert !user.errors[:profile_name].empty?
  		# puts user.errors.full_messages
  		assert user.errors[:profile_name].include?("must be formatted correctly.") 
  end

end
