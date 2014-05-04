class Contributor < ActiveRecord::Base
  belongs_to :idea
  belongs_to :user

  has_many :updates
end
