require 'bcrypt'
class Commander < ActiveRecord::Base
  # Remember to create a migration!
  ### NOTES FOR CREATION ########
  has_many :mvps



  include BCrypt

   def password
    @password ||= Password.new(pw_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.pw_hash = @password
  end
end
