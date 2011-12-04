module ApplicationHelper

  def link_to_twitter(user, provider='twitter')
    if user.nickname
      link_to "@#{user.nickname}", "https://twitter.com/#!/#{user.nickname}"
    else
      ""
    end
  end

end

