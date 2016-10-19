class Comment < ActiveRecord::Base
  # Remember to create a migration!
  ### NOTES FOR CREATION ########
  belongs_to :clip
  belongs_to :commander
end
