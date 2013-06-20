class Article < ActiveRecord::Base
  attr_accessible :body, :title

	validates_presence_of :title
end
