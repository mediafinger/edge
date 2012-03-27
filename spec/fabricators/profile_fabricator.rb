Fabricator(:profile) do
  name                    { Faker::Name.first_name }
  nickname                { '@' + Faker::Name.first_name + rand(99).to_s }
end

Fabricator(:pro_andy, :from => :profile) do
  name                    'Andy'
  nickname                '@hhandy'
end

Fabricator(:pro_andreas, :from => :profile) do
  name                    'Andreas Finger'
  nickname                '@mediafinger'
end