class Idea < ActiveRecord::Base
    acts_as_followable
    acts_as_votable
end
