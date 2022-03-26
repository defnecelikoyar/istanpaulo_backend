# This will delete any existing rows from the Artwork and Art Lover tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting all artwork, lover & review data..."
Artwork.destroy_all
Review.destroy_all
Lover.destroy_all

puts "🌱 Creating artworks...I'm painting now!"
abaporu = Artwork.create({title: "Abaporu", artist: "Tarsila do Amaral", date: "1928", description:"The poster image for the Brazilian Modernist movement of the early 20th century, this painting inspired the Manifesto Antropófago.", image_url: "https://smarthistory.org/wp-content/uploads/2017/11/abaporu.jpg"})
taner = Artwork.create({title: "1923", artist: "Taner Ceylan", date: "2011", description:"Ceylan began The Lost Paintings Series as a contemporary exploration of the Orientalist gaze in all its facets. Upsetting both Western and Eastern master narratives, The Lost Paintings Series presents Eastern figures in a fascinating navigation of history, power and body.", image_url: "https://external-preview.redd.it/qtDOCDDjx-LhZP9ywF3fpxNNh12d3G_oFt0fwTeL8LA.jpg?width=960&crop=smart&auto=webp&s=373bbf035e4a6255eb31346dc7a4cb63ebb06f73"})
anita = Artwork.create({title: "Tropical", artist: "Anita Malfatti", date: "1917", description:"After studying under German expressionists and making a name for herself in New York as an up-and-coming modernist painter, Anita Malfatti exhibited this piece at the Semana de Arte Moderna (Modern Art Week) in São Paulo, where it caused uproar and controversy.", image_url: "https://artnexus.com:5000/uploads/2021-02-22T17:28:56.750Zu0023333kin.jpg"})
fikret = Artwork.create({title: "Pembe Kahve", artist: "Fikret Mualla Saygı", date: "1958", description:"Fikret Mualla's life was stifled due to a childhood accident which caused a permanent limp, as well as various mental health problems that required multiple hospitalizations. His paintings, in contrast, depict a bright and innocent world.", image_url: "http://www.leblebitozu.com/wp-content/uploads/2016/08/fikret-mualla-pembe-kahve.jpg"})
dervishes = Artwork.create({title: "Dervishes", artist: "Cevat Dereli", date: "1951", description:"In this Masterpiece, Cevat wants to bring the viewer closer to the Devish and their devotional exercises towards the religion. The viewer can see and feel the faith coming out of the painting thrhough the details, colours and symbolism. It is unknown when it was painted, but experts believe it was around the 50s. ", image_url: "https://www.askart.com/photos3/2014/AIA20141019_78593/149_1.jpg"})
bedri = Artwork.create({title: "Han Kahvesi", artist: "Bedri Rahmi Eyüboğlu", date: "1973", description:"In this painting, Eyüboğlu provokes the viewer to observe the different emotions in which he has drawn his figures. Whilst the two sitting behind the table look as if they are weighed down by the cares of the world, the figure to the right seems to be utterly oblivious to everything but his own music.", image_url: "https://www.istanbulmodern.org/pic_lib/bigSize/resimgalerisi/5/eyuboglu-b-r-han-kahvesi_5_6354488.JPG"})
grupo = Artwork.create({title: "Grupo dos Cinco", artist: "Tarsila do Amaral", date: "1922", description:"Grupo dos Cinco (Tarsila do Amaral, Mário de Andrade, Anita Malfatti, Oswald de Andrade, e Menotti del Picchia in 1922)”. This painting by Anita Malfatti shows five of the most important modernist painters together in a room, where they are lounging and clearly disregarding traditional standards of propriety.", image_url: "https://library.brown.edu/create/fivecenturiesofchange/wp-content/uploads/sites/27/2012/08/malfatti.jpeg"})
bananal = Artwork.create({title: "Bananal", artist: "Lasar Segall", date: "1927", description:"The painting “Bananal” (Banana Grove), by Lasar Segall (1927), draws the eye to a worker standing in the midst of a banana plantation, emphasizing the human element in Brazils agricultural production.", image_url: "https://library.brown.edu/create/fivecenturiesofchange/wp-content/uploads/sites/27/2012/08/segall.jpeg"})



puts "🌱 Creating art lovers...Bring the tissues bc they will cry."

50.times {
  Lover.create({name:Faker::Name.name, occupation:Faker::Job.title})
}

puts "🌱 Creating reviews...Honest reviews for the gallery."

review = ["This painting rose to the peak of his achievements and is considered to be one of the most-known paintings in modern culture with the most replicated and sought-after prints.", "This is IMPRESSIVE! I'd never think someone was able to create something like this. MASTERPIECE!",
"This  artist draws attention to the moments when pieces of natural history are extracted and transported to museum collections – to be consumed as curios", "I was not expecting the lack of inspiration and attention to details from this artist. This shold not be exposed here.", "I must have this artwork! It AMAZING!", "I have no words to describe my feelings towards this beauty. It brought tears to my eyes", "Such a MASTERPIECE! It shows the true colours of what was going on back then.", "Explendid!", "Michelangelo would be jealous right now. This painting is ... (i'm crying).", "Majestic! Belo!", "I do not understand what the painter is trying to say here. Help!", "So this art belongs to this artist? Wow ... this shit is good!", "I do not understand art, but this one gave me chills.", "What I see there has nothing to do with the title. Who came up with that?", "I just want to pass this phase and move to rails.", "Lovelly! I wish I could be part of this painting."]


# create between 5 and 8 reviews for each artwork
rand(5..8).times do
  lover = Lover.order('RANDOM()').first
  
  10.times {
    Review.create({author:Lover.all.sample.name, review:review.sample, lover_id:Lover.all.sample.id, artwork_id:Artwork.all.sample.id})
  }
# # A review belongs to an artwork and a lover
# Review.create(
#   author: lover.name,
#   review: Faker::Lorem.sentence,
#   artwork_id: Artwork.all.sample.id,
#   lover_id: lover.id
# )
end

puts "✅ Done seeding! Time to check who is crying,"
