class Comment < ActiveRecord::Base
  belongs_to :entry
  is_gravtastic!
  
  validates_presence_of :body
end
