
Artist.destroy_all
Instrument.destroy_all 

puts "destroyed..."


a1 = Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
a2 = Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
a3 =Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
a4 =Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
a5 = Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

i1 = Instrument.create(name: "Guitar", classification: "Strings")
i2 = Instrument.create(name: "Violin", classification: "Strings")
i3 = Instrument.create(name: "Flute", classification: "Woodwind")
i4 = Instrument.create(name: "Xylophone", classification: "Percussion")

ArtistInstrument.create(artist: a1, instrument: i1)
ArtistInstrument.create(artist: a2, instrument: i2)
ArtistInstrument.create(artist: a3, instrument: i3)
ArtistInstrument.create(artist: a4, instrument: i4)
ArtistInstrument.create(artist: a5, instrument: i1)

ArtistInstrument.create(artist: a1, instrument: i2)
ArtistInstrument.create(artist: a2, instrument: i3)
ArtistInstrument.create(artist: a3, instrument: i4)
ArtistInstrument.create(artist: a4, instrument: i1)
ArtistInstrument.create(artist: a5, instrument: i2)


puts "seeds created"