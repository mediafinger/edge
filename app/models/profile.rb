class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :profile_ratings,  :dependent => :destroy

  attr_accessible :user_id, :name, :nickname, :location, :img_url, :thumbnail_url, :about, :website, :profession

  def set_twitter_attributes(hash)
    self.nickname       = hash['nickname']        if nickname.blank?
    self.name           = hash['name']            if name.blank?
    self.location       = hash['location']        if location.blank?
    self.thumbnail_url  = hash['image']           if img_url.blank?
    self.about          = hash['description']     if about.blank?
    self.website        = hash['urls']['Website'] if website.blank?
  end

end
