Fabricator(:user) do
  email                   { |user| Faker::Name.first_name + "@example.com".downcase }
  password                { |user| 'password' }
  password_confirmation   { |user| user.password }

  after_create { |user| user.update_attribute(:profile, Fabricate(:profile)) } 
    # :name => Faker::Name.first_name, :nickname => '@' + Faker::Name.first_name + rand(99).to_s) }
end

Fabricator(:andy, :from => :user) do
  email                   { 'hhandy@gmx.de' }
  password                { 'foobar' }
  password_confirmation   { 'foobar' }

  after_create { |user| user.update_attribute(:profile, Fabricate(:pro_andy)) }    # :name => 'Andy', :nickname => '@hhandy') }
end

Fabricator(:andreas, :from => :user) do
  email                   { 'andreas.finger@tolingo.de' }
  password                { 'foobar' }
  password_confirmation   { 'foobar' }

  after_create { |user| user.update_attribute(:profile, Fabricate(:pro_andreas)) }   # :name => 'Andreas Finger', :nickname => '@mediafinger') }
end