Fabricator(:user) do
  name                    { Faker::Name.first_name }
  nickname                { '@' + Faker::Name.first_name + rand(99).to_s }
  email                   { |user| "#{user.nickname}@example.com".downcase }
  password                { |user| 'password' }
  password_confirmation   { |user| user.password }
end

Fabricator(:andy) do
  name                    { 'Andy' }
  nickname                { '@hhandy' }
  email                   { 'hhandy@gmx.de' }
  password                { 'foobar' }
  password_confirmation   { 'foobar' }
end

Fabricator(:andreas) do
  name                    { 'Andreas Finger' }
  nickname                { '@mediafinger' }
  email                   { 'andreas.finger@tolingo.de' }
  password                { 'foobar' }
  password_confirmation   { 'foobar' }
end