class Update < ActiveRecord::Base
  belongs_to :contributor
  belongs_to :idea
end
