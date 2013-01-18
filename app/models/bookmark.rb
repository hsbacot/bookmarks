class Bookmark < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  attr_accessible :name, :website
end
