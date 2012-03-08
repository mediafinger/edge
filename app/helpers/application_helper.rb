module ApplicationHelper

  def link_to_twitter(user)
    if user.profile.nickname
      link_to "@#{user.profile.nickname}", "https://twitter.com/#!/#{user.profile.nickname}"
    else
      ""
    end
  end

  def link_to_website(user)
    if user.profile.website
      link_to "--> #{user.profile.website}", user.profile.website
    else
      ""
    end
  end

  def profile_img(user)
    if user.profile.thumbnail_url
      image_tag(user.profile.thumbnail_url, :size => "48x48")
    else
      ""
    end
  end

end

