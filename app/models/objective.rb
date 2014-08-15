class Objective < ActiveRecord::Base
  extend FriendlyId
  friendly_id :number_and_name, :use => :slugged

  belongs_to :subtopic

  def number_and_name
    "#{number} #{name}"
end
