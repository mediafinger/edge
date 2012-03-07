Fabricator(:authentication) do
  user_id    1
  provider   'provider'
  uid        '69696969'
end

Fabricator(:twitter, :from => :authentication) do
  user_id    1
  provider   'Twitter'
  uid        'twit555'
end

Fabricator(:openid, :from => :authentication) do
  user_id    1
  provider   'OpenID'
  uid        'www.openid.com'
end

Fabricator(:authentication_new, :from => :authentication) do
  user_id    nil
  provider   'Somebody'
  uid        "you don't know me"
end