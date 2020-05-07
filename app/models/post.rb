class Post < ApplicationRecord
  belongs_to :user
  has_many :tags
  # has_many :comments, dependent: destroy

  validates_length_of :title, :maximum => 50
  validates_length_of :body, :maximum => 200
  validates_inclusion_of :status, in: %w(draft published archived)

  # validate :max_one_draft

  scope :status, ->(status){where(status: status)}
  # scope :status_and_user, ->(user){where(status: 'draft', user: user)}

  STATUS = ['draft', 'published', 'archived']

  # def max_one_draft
  #   if self.status == 'draft' && status_and_user(self.user).count > 1
  #     errors.add(:base, 'Only one post should be in draft status.')
  #   end
  # end
end
