Fabricator(:user) do
  email                   { |user| Faker::Name.first_name + "@example.com".downcase }
  password                { |user| 'password' }
  password_confirmation   { |user| user.password }

  profile     { Fabricate.(:profile) }
end

Fabricator(:andy, :from => :user) do
  email                   { 'hhandy@gmx.de' }
  password                { 'foobar' }
  password_confirmation   { 'foobar' }

  profile(:fabricator => :pro_andy)
end

Fabricator(:andreas, :from => :user) do
  email                   { 'andreas.finger@tolingo.de' }
  password                { 'foobar' }
  password_confirmation   { 'foobar' }

  profile(:fabricator => :pro_andreas)
end