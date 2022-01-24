# This will delete any existing rows from the Artwork and Art Lover tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting all artwork & review data..."
Artwork.destroy_all
Review.destroy_all
Lover.destroy_all

puts "🌱 Creating artworks..."
abaporu = Artwork.create(title: "Abaporu", artist: "Tarsila do Amaral", date: "1928", description:"The poster image for the Brazilian Modernist movement of the early 20th century, this painting inspired the Manifesto Antropófago.", image_url: "https://smarthistory.org/wp-content/uploads/2017/11/abaporu.jpg")
anita = Artwork.create(title: "Tropical", artist: "Anita Malfatti", date: "1917", description:"After studying under German expressionists and making a name for herself in New York as an up-and-coming modernist painter, Anita Malfatti exhibited this piece at the Semana de Arte Moderna (Modern Art Week) in São Paulo, where it caused uproar and controversy.", image_url: "https://www.dailyartmagazine.com/wp-content/uploads/2018/08/ANITA-MALFATTI-1.jpg")
fikret = Artwork.create(title: "Pembe Kahve", artist: "Fikret Mualla Saygı", date: "1958", description:"Fikret Mualla's life was stifled due to a childhood accident which caused a permanent limp, as well as various mental health problems that required multiple hospitalizations. His paintings, in contrast, depict a bright and innocent world.", image_url: "http://www.leblebitozu.com/wp-content/uploads/2016/08/fikret-mualla-pembe-kahve.jpg")
bedri = Artwork.create(title: "Han Kahvesi", artist: "Bedri Rahmi Eyüboğlu", date: "1973", description:"In this painting, Eyüboğlu provokes the viewer to observe the different emotions in which he has drawn his figures. Whilst the two sitting behind the table look as if they are weighed down by the cares of the world, the figure to the right seems to be utterly oblivious to everything but his own music.", image_url: "https://www.istanbulmodern.org/pic_lib/bigSize/resimgalerisi/5/eyuboglu-b-r-han-kahvesi_5_6354488.JPG")

puts "🌱 Creating reviews..."

puts "🌱 Creating art lovers..."


puts "✅ Done seeding!"
