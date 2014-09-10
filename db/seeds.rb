

user = User.create :email => "nupebasu@gmail.com",
                   :password => "11111111",
                   :password_confirmation => "11111111",
                   :name => "Nupe Basu"

require 'open-uri'

categories = JSON.parse(open("http://localhost:4000/categories.json").read)
body_parts = JSON.parse(open("http://localhost:4000/body_parts.json").read)
studies = JSON.parse(open("http://localhost:4000/studies.json").read)

studies.each do |study|

end
