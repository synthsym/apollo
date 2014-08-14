class Syllabus < ActiveRecord::Base
  belongs_to :subject

  has_many :topics
end
