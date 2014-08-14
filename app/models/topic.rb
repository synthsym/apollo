class Topic < ActiveRecord::Base
  belongs_to :syllabus

  has_many :subtopics
end
