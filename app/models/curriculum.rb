class Curriculum < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, :use => :slugged

  has_many :subjects
end
