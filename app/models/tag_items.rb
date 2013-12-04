class TagItem < ActiveRecord::Base
  belongs_to :articles
  belongs_to :tags
  attr_accessible :article_id, :tag_id
end
