class Syllabus < ActiveRecord::Base
  extend FriendlyId
  friendly_id :version, :use => :slugged

  belongs_to :subject

  has_many :topics
end
