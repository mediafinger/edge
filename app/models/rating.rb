class Rating < ActiveRecord::Base
  belongs_to :user

  validates_numericality_of :rating,  :only_integer => true,  :message => "can only be whole number."
  validates_inclusion_of    :rating,  :in => 1..5,            :message => "can only be between 1 and 5."

  attr_accessible :user_id, :event_id, :rating
end
