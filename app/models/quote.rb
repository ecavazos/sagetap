class Quote < ActiveRecord::Base
  validates_presence_of :text, :author, :user, :category

  belongs_to :user
  belongs_to :category
end
