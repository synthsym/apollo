class Subject < ActiveRecord::Base
  belongs_to :curriculum

  has_many :syllabuses
end
