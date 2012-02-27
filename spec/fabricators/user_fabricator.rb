Fabricator(:user) do
  nickname                { Faker::Name.first_name }
  email                   { |user| "#{user.nickname}@example.com".downcase }
  password                { |user| 'password' }
  password_confirmation   { |user| user.password }
end

Fabricator(:admin, :from => :user) do
  nickname    'admin'
  email       'admin@example.com'
end