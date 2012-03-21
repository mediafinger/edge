class ProfileRating < ActiveRecord::Base
  belongs_to :user
  belongs_to :profile

  validates_numericality_of :rating,  :only_integer => true,  :message => "can only be whole number."
  validates_inclusion_of    :rating,  :in => 1..5,            :message => "can only be between 1 and 5."

  attr_accessible :user_id, :profile_id, :rating
end
