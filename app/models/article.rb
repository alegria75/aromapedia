class Article < ActiveRecord::Base
  #has_many
  attr_accessible :body, :title
end
