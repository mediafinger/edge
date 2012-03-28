Fabricator(:user) do
  email                   { |user| Faker::Name.first_name + "@example.com".downcase }
  password                { |user| 'password' }
  password_confirmation   { |user| user.password }

  after_create { |user| user.update_attribute(:profile, Fabricate(:profile)) } 
end

Fabricator(:other_user, :from => :user) do
  email                   'mail@example.com'
  password                { |user| 'password' }
  password_confirmation   { |user| user.password }

  after_create { |user| user.update_attribute(:profile, Fabricate(:profile)) } 
end

Fabricator(:andy, :from => :user) do
  email                   'hhandy@gmx.de'
  password                'foobar'
  password_confirmation   'foobar'

  after_create { |user| user.update_attribute(:profile, Fabricate(:pro_andy)) }
end

Fabricator(:andreas, :from => :user) do
  email                   'andreas.finger@tolingo.de'
  password                'foobar'
  password_confirmation   'foobar'

  after_create { |user| user.update_attribute(:profile, Fabricate(:pro_andreas)) }
end