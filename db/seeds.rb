# This will delete any existing rows from the Artwork and Art Lover tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting all artwork & review data..."
Artwork.destroy_all
Review.destroy_all
Lover.destroy_all

puts "🌱 Creating artworks..."
abaporu = Artwork.create({title: "Abaporu", artist: "Tarsila do Amaral", date: "1928", description:"The poster image for the Brazilian Modernist movement of the early 20th century, this painting inspired the Manifesto Antropófago.", image_url: "https://smarthistory.org/wp-content/uploads/2017/11/abaporu.jpg"})
anita = Artwork.create({title: "Tropical", artist: "Anita Malfatti", date: "1917", description:"After studying under German expressionists and making a name for herself in New York as an up-and-coming modernist painter, Anita Malfatti exhibited this piece at the Semana de Arte Moderna (Modern Art Week) in São Paulo, where it caused uproar and controversy.", image_url: "https://artnexus.com:5000/uploads/2021-02-22T17:28:56.750Zu0023333kin.jpg"})
fikret = Artwork.create({title: "Pembe Kahve", artist: "Fikret Mualla Saygı", date: "1958", description:"Fikret Mualla's life was stifled due to a childhood accident which caused a permanent limp, as well as various mental health problems that required multiple hospitalizations. His paintings, in contrast, depict a bright and innocent world.", image_url: "http://www.leblebitozu.com/wp-content/uploads/2016/08/fikret-mualla-pembe-kahve.jpg"})
bedri = Artwork.create({title: "Han Kahvesi", artist: "Bedri Rahmi Eyüboğlu", date: "1973", description:"In this painting, Eyüboğlu provokes the viewer to observe the different emotions in which he has drawn his figures. Whilst the two sitting behind the table look as if they are weighed down by the cares of the world, the figure to the right seems to be utterly oblivious to everything but his own music.", image_url: "https://www.istanbulmodern.org/pic_lib/bigSize/resimgalerisi/5/eyuboglu-b-r-han-kahvesi_5_6354488.JPG"})

puts "🌱 Creating art lovers..."

50.times {
  Lover.create({name:Faker::Name.unique.name, occupation:Faker::Job.title})
}

puts "🌱 Creating reviews..."

review = ["This painting rose to the peak of his achievements and is considered to be one of the most-known paintings in modern culture with the most replicated and sought-after prints.", "This is IMPRESSIVE! I'd never think someone was able to create something like this. MASTERPIECE!",
"This  artist draws attention to the moments when pieces of natural history are extracted and transported to museum collections – to be consumed as curios", "I was not expecting the lack of inspiration and attention to details from this artist. This shold not be exposed here.", "I must have this artwork! It AMAZING!", "I have no words to describe my feelings towards this beauty. It brought tears to my eyes"]

100.times {
  Review.create({author:Lover.all.sample.name, review:review.sample, lover_id:Lover.all.sample.id, artwork_id:Artwork.all.sample.id})
}


puts "✅ Done seeding!"
