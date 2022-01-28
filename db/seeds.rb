# This will delete any existing rows from the Artwork and Art Lover tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting all artwork, lover & review data..."
Artwork.destroy_all
Review.destroy_all
Lover.destroy_all

puts "🌱 Creating artworks...I'm painting now!"
abaporu = Artwork.create({title: "Abaporu", artist: "Tarsila do Amaral", era: "1920s", date: "1928", description:"The poster image for the Brazilian Modernist movement of the early 20th century, this painting inspired the Manifesto Antropófago.", image_url: "https://smarthistory.org/wp-content/uploads/2017/11/abaporu.jpg"})
anita = Artwork.create({title: "Tropical", artist: "Anita Malfatti", era: "1910s", date: "1917", description:"After studying under German expressionists and making a name for herself in New York as an up-and-coming modernist painter, Anita Malfatti exhibited this piece at the Semana de Arte Moderna (Modern Art Week) in São Paulo, where it caused uproar and controversy.", image_url: "https://artnexus.com:5000/uploads/2021-02-22T17:28:56.750Zu0023333kin.jpg"})
fikret = Artwork.create({title: "Pembe Kahve", artist: "Fikret Mualla Saygı", era: "1950s", date: "1958", description:"Fikret Mualla's life was stifled due to a childhood accident which caused a permanent limp, as well as various mental health problems that required multiple hospitalizations. His paintings, in contrast, depict a bright and innocent world.", image_url: "http://www.leblebitozu.com/wp-content/uploads/2016/08/fikret-mualla-pembe-kahve.jpg"})
bedri = Artwork.create({title: "Han Kahvesi", artist: "Bedri Rahmi Eyüboğlu", era: "1970s", date: "1973", description:"In this painting, Eyüboğlu provokes the viewer to observe the different emotions in which he has drawn his figures. Whilst the two sitting behind the table look as if they are weighed down by the cares of the world, the figure to the right seems to be utterly oblivious to everything but his own music.", image_url: "https://www.istanbulmodern.org/pic_lib/bigSize/resimgalerisi/5/eyuboglu-b-r-han-kahvesi_5_6354488.JPG"})
anadolu = Artwork.create({title: "Anadolu Betimlemesi", artist: "Turgut Zaim", era: "1950s", date: "1950", description:"In this oil on canvas painting, Turgut calls the viewer to feel the motherhood and its challenges back in Turkey in the last century. The viewer can fell different emotions in which he has drawn his figures, specially the mother who has to take care of the children, husband and animals in the open field. The child in the back looks preocupied as she will have to assist in taking care of the youger girl while the mother goes to the field to look after the animals.", image_url: "https://img.artam.com/storage//images/auctions/59/7881/19451/turgut-zaim-1906-1974-anadolu-betimlemesi.jpg"})
festival = Artwork.create({title: "Festival", artist: "Cevat Dereli", era: "1920s", date: "1921", description:"In this oil on canvas painting, Cevat wants to express happiness among people during a festival. It is unknown if the festival is related to Turkey or if he had something else in mind.", image_url: "https://media.mutualart.com/Images/2017_04/03/07/072252297/ddfb6d8a-04e9-4769-a0e3-03331097497b.Jpeg"})
dervishes = Artwork.create({title: "Dervishes", artist: "Cevat Dereli", era: "1950s", date: "1951", description:"In this Masterpiece, Cevat wants to bring the viewer closer to the Devish and their devotional exercises towards the religion. The viewer can see and feel the faith coming out of the painting thrhough the details, colours and symbolism. It is unknown when it was painted, but experts believe it was around the 50s. ", image_url: "https://www.askart.com/photos3/2014/AIA20141019_78593/149_1.jpg"})
grupo = Artwork.create({title: "Grupo dos Cinco", artist: "Tarsila do Amaral", era: "1920s", date: "1922", description:"Grupo dos Cinco (Tarsila do Amaral, Mário de Andrade, Anita Malfatti, Oswald de Andrade, e Menotti del Picchia in 1922)”. This painting by Anita Malfatti shows five of the most important modernist painters together in a room, where they are lounging and clearly disregarding traditional standards of propriety.", image_url: "https://library.brown.edu/create/fivecenturiesofchange/wp-content/uploads/sites/27/2012/08/malfatti.jpeg"})
bananal = Artwork.create({title: "Bananal", artist: "Lasar Segall", era: "1920s", date: "1927", description:"The painting “Bananal” (Banana Grove), by Lasar Segall (1927), draws the eye to a worker standing in the midst of a banana plantation, emphasizing the human element in Brazils agricultural production.", image_url: "https://library.brown.edu/create/fivecenturiesofchange/wp-content/uploads/sites/27/2012/08/segall.jpeg"})
rio = Artwork.create({title: "Rio Brasil", artist: "Pablo Matania", era: "1970s", date: "1976", description:"Oil on canvas in its gilded wooden frame signed by the artist. Label on the back Pablo Matania, Rio Brasil 1976. Argentinian painter born in 1936.", image_url: "https://assets.catawiki.nl/assets/2019/8/28/7/1/f/71f221df-b3ba-4215-8d85-7d746be1f8e7.jpg"})
scholar = Artwork.create({title: "The Scholar", artist: "Osman Hamdi Bey", era: "1910s", date: "1910", description:"Scholar is an Orientalist oil on canvas painting created by Osman in 1878. It lives in a private collection that was showned to the public in the early 1900s.", image_url: "https://upload.wikimedia.org/wikipedia/commons/3/39/OSMAN_HAMDY_BEY_TURKISH_1842-1910_THE_SCHOLAR.jpg"})
trainer = Artwork.create({title: "The Tortoise Trainer", artist: "Osman Hamdi Bey", era: "1910s", date: "1906", description:"In the scene by Osman, we see a male figure in oriental attire, pensively watching the tortoises eating the greenery on the floor. He holds a ney in his hand and carries a percussion instrument on his back. The viewer can read the following inscription in the scene: Closeness to the beloved (Muhammad), healing to the heart.", image_url: "https://upload.wikimedia.org/wikipedia/commons/4/4a/Osman_Hamdi_Bey_-_The_Tortoise_Trainer_-_Google_Art_Project.jpg"})



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
