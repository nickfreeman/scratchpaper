class Update < ActiveRecord::Base
  belongs_to :contributor
  belongs_to :idea
  belongs_to :user
end
