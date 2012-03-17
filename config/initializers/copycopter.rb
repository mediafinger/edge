CopycopterClient.configure do |config|
  if ENV["RAILS_ENV"] == :production
    config.api_key = '404b4323eaf98dc39668a5a478ec6b51'
    config.host = 'evening-samurai-2644.herokuapp.com'
  else
    config.api_key = '1f3ec1897e14625f7b1f80c355890d55'
    config.host = 'localhost:5000'
  end
  puts "CopyCopter bound to: " + config.host
end

