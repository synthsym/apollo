class Subtopic < ActiveRecord::Base
  extend FriendlyId
  friendly_id :number_and_name, :use => :slugged

  belongs_to :topic

  has_many :objectives

  def number_and_name
    "#{number} #{name}"
end
