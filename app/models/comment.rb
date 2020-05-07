class Comment < ApplicationRecord
  include WordCheck
  # extend VowelCheck
  belongs_to :user
  belongs_to :post

  belongs_to :comments, :class_name => 'Comment', :foreign_key => 'comment_id', :dependent => :destroy
  validates_length_of :description, maximum: 100


end
