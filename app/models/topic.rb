class Topic < ActiveRecord::Base
  extend FriendlyId
  friendly_id :number_and_name, :use => :slugged

  belongs_to :syllabus

  has_many :subtopics

  def number_and_name
    "#{number} #{name}"
end
