module ApplicationHelper

  def formatted_date(datestring)
    date = Date.parse(datestring.to_s) if datestring
    date ? date.strftime('%d.%m.%Y') : ''
  end

  def link_to_twitter(user)
    unless user.profile.nickname.blank?
      link_to "@#{user.profile.nickname}", "https://twitter.com/#!/#{user.profile.nickname}"
    else
      ""
    end
  end

  def link_to_website(user)
    unless user.profile.website.blank?
      link_to "--> #{user.profile.website}", user.profile.website
    else
      ""
    end
  end

  # def ilink_to(*args, &block)
  #   if block_given?
  #     icon = args[0]
  #     options = args[1] || {}
  #     html_options = args[2]
  #     ilink_to(icon, capture(&block), options, html_options)
  #   else
  #     icon = args[0]
  #     name = args[1]
  #     options = args[2] || {}
  #     html_options = args[3]

  #     html_options = convert_options_to_data_attributes(options, html_options)
  #     url = url_for(options)

  #     href = html_options['href']
  #     tag_options = tag_options(html_options)

  #     href_attr = "href=\"#{ERB::Util.html_escape(url)}\"" unless href
  #     "<a #{href_attr}#{tag_options}><i class=\"icon-#{icon}\"></i> #{ERB::Util.html_escape(name || url)}</a>".html_safe
  #   end
  # end

  def profile_img(user)
    if user.profile.thumbnail_url
      image_tag(user.profile.thumbnail_url, :size => "48x48")
    else
      ""
    end
  end

end

