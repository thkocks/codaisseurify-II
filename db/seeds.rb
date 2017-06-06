# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artist.destroy_all
Album.destroy_all
Song.destroy_all
Genre.destroy_all


# Users
tim = User.create(email: "tim@musify.com", password: "abcd1234")
anna = User.create(email: "anna@musify.com", password: "abcd1234")
hendrik = User.create(email: "hendrik@musify.com", password: "abcd1234")
steve = User.create(email: "steve@musify.com", password: "abcd1234")
carla = User.create(email: "carla@musify.com", password: "abcd1234")

# Genres
alternative = Genre.create!(name: "Alternative")
blues = Genre.create!(name: "Blues")
classical = Genre.create!(name: "Classical")
country = Genre.create!(name: "Country")
dance = Genre.create!(name: "Dance")
dubstep = Genre.create!(name: "Dubstep")
electronic = Genre.create!(name: "Electronic")
futurehouse = Genre.create!(name: "Future House")
hiphop = Genre.create!(name: "Hip-Hop")
indiepop = Genre.create!(name: "Indie Pop")
jpop = Genre.create!(name: "J-Pop")
jazz = Genre.create!(name: "Jazz")
pop = Genre.create!(name: "pop")
rnbsoul = Genre.create!(name: "R&B / Soul")
reggae = Genre.create!(name: "Reggae")
rock = Genre.create!(name: "Rock")
soul = Genre.create!(name: "Soul")
world = Genre.create!(name: "World")

# Artists
gangstarr = Artist.create!(name: "Gangstarr",
                        bio: "Gang Starr was an influential East Coast hip hop duo that consisted of MC Guru and the DJ/producer DJ Premier.",
                        image_url: "https://upload.wikimedia.org/wikipedia/commons/4/42/Gangstarr-09.jpg",
                        genres: [hiphop]
)

knifeparty = Artist.create!(name: "Knife Party",
                        bio: "Knife Party are an Australian electronic dance music duo consisting of two members of the drum and bass band Pendulum, Rob Swire and Gareth McGrillen.",
                        image_url: "https://upload.wikimedia.org/wikipedia/commons/7/70/Knife_Party_Logo.jpg",
                        genres: [dance, electronic]
)

skrillex = Artist.create!(name: "Skrillex",
                        bio: "Sonny John Moore (born January 15, 1988), known professionally as Skrillex, is an American electronic dance music producer, DJ, singer, songwriter and multi-instrumentalist.",
                        image_url: "https://pbs.twimg.com/profile_images/451300009808785408/XR0qs5ZP.jpeg",
                        genres: [dubstep, electronic]
)

systemofadown = Artist.create!(name: "System of a Down",
                        bio: "System of a Down, sometimes shortened to SOAD or System, is an Armenian-American heavy metal band from Glendale, California, formed in 1994. The band currently consists of Serj Tankian (lead vocals, keyboards), Daron Malakian (vocals, guitar), Shavo Odadjian (bass, backing vocals) and John Dolmayan (drums).",
                        image_url: "https://s3.amazonaws.com/bit-photos/large/7835713.jpeg",
                        genres: [rock]
)

bobmarley = Artist.create!(name: "Bob Marley",
                        bio: "Robert Nesta Marley, OM (6 February 1945 – 11 May 1981) was a Jamaican singer-songwriter, musician and guitarist who achieved international fame and acclaim",
                        image_url: "https://upload.wikimedia.org/wikipedia/commons/5/5e/Bob-Marley.jpg",
                        genres: [reggae]
)

amywinehouse = Artist.create!(name: "Amy Winehouse",
                       bio: "Amy Jade Winehouse (14 September 1983 – 23 July 2011) was an English singer and songwriter. She was known for her deep, expressive contralto vocals and her eclectic mix of musical genres",
                       image_url: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Amy_Winehouse_f4962007_crop.jpg",
                       genres: [soul, jazz, blues]
)

katyperry = Artist.create!(name: "Katy Perry",
                       bio: "",
                       image_url: "",
                       genres: [pop]
)

# Albums
momentoftruth = Album.create!(name: "Moment of Truth",
                            description: "Released four years after its previous album, Hard to Earn, this album could be perceived as a comeback, with a newer, updated style of the group's already-established jazz-tinged hip hop, as stated by Guru in the introduction. Lyrically, the album is more emotional and socially conscious than previous installments.",
                            image_url: "https://upload.wikimedia.org/wikipedia/en/e/eb/Gangstarrmomentoftruth.jpg",
                            released: 1998,
                            artist: gangstarr
)

nomoderntalking = Album.create!(name: "100% No Modern Talking",
                            description: "100% No Modern Talking is the debut EP by Australian electro house duo Knife Party. It was released 12 December 2011 as a free download on their website, Facebook and SoundCloud as well as being available for purchase on Beatport and iTunes.",
                            image_url: "https://upload.wikimedia.org/wikipedia/en/f/f7/100%25_No_Modern_Talking_Album_Artwork.jpg",
                            released: 2011,
                            artist: knifeparty
)

recess = Album.create!(name: "Recess",
                            description: "Recess is the debut studio album by American music producer Skrillex, released on March 18, 2014 by OWSLA, Big Beat Records, and Atlantic Records.[5][6] It was recorded between 2013 and 2014 whilst Skrillex was touring around the world",
                            image_url: "https://upload.wikimedia.org/wikipedia/en/5/52/RecessSkrillex.jpg",
                            released: 2014,
                            artist: skrillex
)

uprising = Album.create!(name: "Uprising",
                            description: "Uprising is a 1980 reggae album by Bob Marley and the Wailers. Marley died the following year, and Uprising was the final studio album released during his lifetime. This album is one of Marley's most directly religious, with nearly every song addressing his Rastafarian beliefs, culminating in the acoustic recording of Redemption Song",
                            image_url: "https://upload.wikimedia.org/wikipedia/en/0/0a/BobMarley%26theWailersUprising.jpg",
                            released: 1980,
                            artist: bobmarley
)

toxicity = Album.create!(name: "Toxicity",
                            description: "Toxicity is the second studio album by the Armenian-American heavy metal band System of a Down.",
                            image_url: "https://upload.wikimedia.org/wikipedia/en/6/64/SystemofaDownToxicityalbumcover.jpg",
                            released: 2001,
                            artist: systemofadown
)

backtoblack  = Album.create!(name: "Back to Black",
                            description: "Back to Black was acclaimed by music critics, who praised Salaam Remi and Mark Ronson's production, as well as Winehouse's songwriting and emotive singing style.",
                            image_url: "https://upload.wikimedia.org/wikipedia/en/6/67/Amy_Winehouse_-_Back_to_Black_%28album%29.png",
                            released: 2006,
                            artist: amywinehouse
)


#  = Album.create!(name: "",
#                             description: "",
#                             image_url: "",
#                             released: ,
#                             artist:
# )


# Songs
Song.create!(name: "You Know My Steez",
            artist: gangstarr,
            album: momentoftruth
)

Song.create!(name: "Robbin Hood Theory",
            artist: gangstarr,
            album: momentoftruth
)

Song.create!(name: "Work",
            artist: gangstarr,
            album: momentoftruth
)

Song.create!(name: "Royalty",
            artist: gangstarr,
            album: momentoftruth
)

Song.create!(name: "Above the Clouds",
            artist: gangstarr,
            album: momentoftruth
)

Song.create!(name: "JFK 2 LAX",
            artist: gangstarr,
            album: momentoftruth
)

Song.create!(name: "Itz a Set Up",
            artist: gangstarr,
            album: momentoftruth
)

Song.create!(name: "Moment of Truth",
            artist: gangstarr,
            album: momentoftruth
)

Song.create!(name: "Internet Friends",
            artist: knifeparty,
            album: nomoderntalking
)

Song.create!(name: "Destroy Them With Lazers",
            artist: knifeparty,
            album: nomoderntalking
)

Song.create!(name: "Tourniquet",
            artist: knifeparty,
            album: nomoderntalking
)

Song.create!(name: "Fire Hive",
            artist: knifeparty,
            album: nomoderntalking
)

Song.create!(name: "All Is Fair in Love and Brostep",
            artist: skrillex,
            album: recess
)

Song.create!(name: "Recess",
            artist: skrillex,
            album: recess
)

Song.create!(name: "Stranger",
            artist: skrillex,
            album: recess
)

Song.create!(name: "Try it Out",
            artist: skrillex,
            album: recess
)

Song.create!(name: "Cost is Clear",
            artist: skrillex,
            album: recess
)

Song.create!(name: "Dirty Vibe",
            artist: skrillex,
            album: recess
)

Song.create!(name: "ragga Bomb",
            artist: skrillex,
            album: recess
)

Song.create!(name: "Prison Song",
            artist: systemofadown,
            album: toxicity
)

Song.create!(name: "Needles",
            artist: systemofadown,
            album: toxicity
)

Song.create!(name: "Jet Pilot",
            artist: systemofadown,
            album: toxicity
)

Song.create!(name: "X",
            artist: systemofadown,
            album: toxicity
)

Song.create!(name: "Chop Suey!",
            artist: systemofadown,
            album: toxicity
)

Song.create!(name: "Forest",
            artist: systemofadown,
            album: toxicity
)

Song.create!(name: "Science",
            artist: systemofadown,
            album: toxicity
)

Song.create!(name: "Aerials",
            artist: systemofadown,
            album: toxicity
)

Song.create!(name: "Coming in from the Cold",
            artist: bobmarley,
            album: uprising
)

Song.create!(name: "Zion Train",
            artist: bobmarley,
            album: uprising
)

Song.create!(name: "Pimper's Paradise",
            artist: bobmarley,
            album: uprising
)

Song.create!(name: "Could You Be Loved",
            artist: bobmarley,
            album: uprising
)

Song.create!(name: "Forever Loving Jah",
            artist: bobmarley,
            album: uprising
)

Song.create!(name: "Redemption Song",
            artist: bobmarley,
            album: uprising
)

Song.create!(name: "Rehab",
            artist: amywinehouse,
            album: backtoblack
)

Song.create!(name: "You know I'm No Good",
            artist: amywinehouse,
            album: backtoblack
)

Song.create!(name: "Back To Black",
            artist: amywinehouse,
            album: backtoblack
)

Song.create!(name: "Love is a Losing Game",
            artist: amywinehouse,
            album: backtoblack
)

Song.create!(name: "Wake Up Alone",
            artist: amywinehouse,
            album: backtoblack
)

Song.create!(name: "Some Unholy War",
            artist: amywinehouse,
            album: backtoblack
)

Song.create!(name: "Addicted",
            artist: amywinehouse,
            album: backtoblack
)

#
# Song.create!(name: "",
#             artist: ,
#             album:
# )
