class Subject < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, :use => :slugged

  belongs_to :curriculum

  has_many :syllabuses
end
