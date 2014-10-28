user = User.find_by :email => "nupebasu@gmail.com"

if user.blank?
  user = User.create :email => "nupebasu@gmail.com",
                     :password => "11111111",
                     :password_confirmation => "11111111",
                     :name => "Nupe Basu"
end

photo_hashes = JSON.parse(File.open(Rails.root.join("lib", "assets", "seed_data.json").to_s).read)

photo_hashes.each do |photo_hash|

  photo = user.photos.build photo_hash.slice("note")
  puts Rails.root.join("lib", "assets", "seed_images", photo_hash["image_filename"]).to_s
  image = File.open(Rails.root.join("lib", "assets", "seed_images", photo_hash["image_filename"]).to_s)
  photo.image = image
  photo.save

  user.tag(photo, :with => photo_hash["tags"], :on => :tags)

end

puts "There are now #{Photo.count} photos in the database."

# require 'open-uri'

# categories = JSON.parse(open("http://localhost:4000/categories.json").read)
# body_parts = JSON.parse(open("http://localhost:4000/body_parts.json").read)
# studies = JSON.parse(open("http://localhost:4000/studies.json").read)

# photos = []

# studies.each do |study|
#   if study["image"]["url"].present?
#     photo = {}
#     photo[:note] = "#{study["accession"]} #{study["clinical_history"]}"

#     tags = []
#     tags << study["subject"]
#     tags << study["diagnosis"]
#     category = categories.detect { |cat| cat["id"] == study["category_id"] }
#     tags << category["content"]
#     body_part = body_parts.detect { |bp| bp["id"] == study["body_part_id"] }
#     tags << body_part["part"]
#     photo[:tags] = tags

#     photo[:image_filename] = study["image"]["url"].split('/').last

#     photos << photo
#   end
# end

# puts photos.to_json
