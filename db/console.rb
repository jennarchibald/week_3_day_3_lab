require ('pry')
require_relative("../models/artist")
require_relative("../models/album")

artist1 = Artist.new({'name' => 'Queen'})
artist1.save()

album1 = Album.new({'title' => 'Sheer Heart Attack', 'genre' => 'Rock', 'artist_id' => artist1.id})
album1.save()

artist1.name = "Queen feat. Adam Lambert"
artist1.update

album1.title = "Greatest Hits"
album1.genre = "Pop"
album1.update

binding.pry
nil
