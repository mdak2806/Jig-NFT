# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Work.destroy_all

w1 = Work.create!(
    name: 'Infected Mob #1',
    description:'A collection of deranged and savage mobsters spreading across Solana',
    artist: 'Sophie',
    token_id: 8283,
    blockchain: 'Solana',
    price: 18,
    currency: 'Sol',
    picture: 'sophie1_ngq7i2'
)

w2 = Work.create!(
    name: 'Infected Mob #2',
    description: 'A collection of deranged and savage mobsters spreading across Solana.' ,
    artist: 'Sophie',
    token_id: 2873,
    blockchain:'Solana',
    price: 10,
    currency: 'Sol' ,
    picture: 'sophie2_m2vqik'

)

w3 = Work.create!(
    name: 'Infected Mob #3',
    description: 'A collection of deranged and savage mobsters spreading across Solana.' ,
    artist: 'Sophie' ,
    token_id: 3887, 
    blockchain: 'Solana',
    price: 3,
    currency: 'Sol',
    picture: 'sophie3_vacgh3'
)

w4 = Work.create!(
    name: 'Steezy Ape #1',
    description: 'Collection of street apes swagged out and dripped out',
    artist: 'Pop',
    token_id: 3778, 
    blockchain: 'Ethereum',
    price: 100,
    currency: "Eth" ,
    picture: 'ape1_kyu0on'
)

w5 = Work.create!(
    name: 'Steezy Ape #2',
    description: 'Collection of street apes swagged out and dripped out',
    artist: 'Pop',
    token_id: 3778,    
    blockchain: 'Ethereum',
    price: 78,
    currency: "Eth" ,
    picture: 'ape2_ug0jjm'
)

w6 = Work.create!(
    name: 'Steezy Ape #3',
    description: 'Collection of street apes swagged out and dripped out',
    artist: 'Pop',
    token_id: 3774,    
    blockchain: 'Ethereum',
    price: 30,
    currency: "Eth" ,
    picture: 'ape3_kmwszw'
)

w7 = Work.create!(
    name: 'Solider of Fortune',
    description: 'This collection is an exploration of other-worldly cityscapes and dark fantasies in the visual aesthetic of BEEBLE distinct style with abstract digital paint in psychedelic colors.',
    artist: 'Beeble',
    token_id: 2929,
    blockchain: 'Ethereum',
    price: 200,
    currency: 'Eth',
    picture: 'sold1_fhz5n7'
)

w8 = Work.create!(
    name: 'Peace in this life',
    description:'This collection is an exploration of other-worldly cityscapes and dark fantasies in the visual aesthetic of BEEBLE distinct style with abstract digital paint in psychedelic colors.',
    artist: 'Beeble' ,
    token_id: 2929,
    blockchain: 'Ethereum',
    price: 223,
    currency: 'Eth',
    picture: 'sold2_prjhlj'
)
w9 = Work.create!(
    name: 'Never get rich',
    description: 'This collection is an exploration of other-worldly cityscapes and dark fantasies in the visual aesthetic of BEEBLE distinct style with abstract digital paint in psychedelic colors.',
    artist: 'Beeble',
    token_id: 2929,   
    blockchain: 'Ethereum',
    price: 100,
    currency: 'Eth',
    picture: 'sold3_h3eem3'
)

w10 = Work.create!(
    name: 'The Snap',
    description: 'Collection of Gifapes reflecting pop culture in the 21st Century',
    artist: 'Gifapes',
    token_id: 2442,   
    blockchain: 'Ethereum',
    price: 4,
    currency: 'Eth',
    picture: 'gifape1_xdenc6'
)


w11 = Work.create!(
    name: 'Magnificent Magic',
    description: 'Collection of Gifapes reflecting pop culture in the 21st Century',
    artist: 'Gifapes',
    token_id: 2442,    
    blockchain: 'Bitcoin',
    price: 6,
    currency: 'Bit',
    picture: 'GifAp2_wtr7ua'
)

w12 = Work.create!(
    name: 'Western Showdown',
    description:'Collection of Gifapes reflecting pop culture in the 21st Century',
    artist: 'Gifapes',
    token_id: 2442,
    blockchain: 'Bitcoin',
    price: 3,
    currency: 'Bit',
    picture: 'gifApe3_qjwcnx'
)

w13 = Work.create!(
    name: 'Soulda #1',
    description:'Weird modern monkey bartender',
    artist: 'Soulda Club',
    token_id: 2234,
    blockchain: 'Ethereum',
    price: 3,
    currency: 'Eth',
    picture: 'SouldaClub_bmntf8'
)
w14 = Work.create!(
    name: 'Soulda #2',
    description:'Weird modern monkey bartender',
    artist: 'Soulda Club',
    token_id: 2434,
    blockchain: 'Ethereum',
    price: 3,
    currency: 'Eth',
    picture: 'sould2_ridei7'
)
w15 = Work.create!(
    name: 'Soulda #3',
    description:'Weird modern monkey bartender',
    artist: 'Soulda Club',
    token_id: 2334,
    blockchain: 'Bitcoin',
    price: 3,
    currency: 'Bit',
    picture: 'sould3_qg3ley'
)
w16 = Work.create!(
    name: 'JPOP Anime #1',
    description:'Modern gif on popular anime',
    artist: 'alperluz',
    token_id: 3223,
    blockchain: 'ApeCoin',
    price: 3,
    currency: 'Ape',
    picture: 'anime1_eg7qk2'
)
w17 = Work.create!(
    name: 'JPOP Anime #2',
    description:'Modern gif on popular anime',
    artist: 'alperluz',
    token_id: 3243,
    blockchain: 'ApeCoin',
    price: 3,
    currency: 'Ape',
    picture: 'anime2_mv2voj'
)
w18 = Work.create!(
    name: 'JPOP Anime #3',
    description:'Modern gif on popular anime',
    artist: 'alperluz',
    token_id: 3423,
    blockchain: 'Dogecoin',
    price: 3,
    currency: 'Doge',
    picture: 'anime3_d6mzjl'
)
w19 = Work.create!(
    name: 'JPOP Anime #4',
    description:'Modern gif on popular anime',
    artist: 'alperluz',
    token_id: 3213,
    blockchain: 'Dogecoin',
    price: 3,
    currency: 'Doge',
    picture: 'anime5_x4dukl'
)
w20 = Work.create!(
    name: 'JPOP Anime #5',
    description:'Modern gif on popular anime',
    artist: 'alperluz',
    token_id: 3222,
    blockchain: 'Ethereum',
    price: 3,
    currency: 'Eth',
    picture: 'anime4_thvi7j'
)
w21 = Work.create!(
    name: 'JPOP Anime #1',
    description:'Modern gif on popular anime',
    artist: 'alperluz',
    token_id: 3243,
    blockchain: 'Ethereum',
    price: 3,
    currency: 'Eth',
    picture: 'anime6_pqwcl6'
)
w22 = Work.create!(
    name: 'Psychonaut Ape #688',
    description:'The Astral Explorers of Kaleidoscopic Realms, the Lucid Discoverers of Fractal Wonders.
    Venture into our metaverse for a psychedelic experience like no other!',
    artist: 'Physconaut',
    token_id: 7472,
    blockchain: 'Ethereum',
    price: 2,
    currency: 'Eth',
    picture: 'ape6_jpkfx4'
)
w23 = Work.create!(
    name: 'Psychonaut Ape #682',
    description:'The Astral Explorers of Kaleidoscopic Realms, the Lucid Discoverers of Fractal Wonders.
    Venture into our metaverse for a psychedelic experience like no other!',
    artist: 'Physconaut',
    token_id: 7422,
    blockchain: 'Ethereum',
    price: 2,
    currency: 'Eth',
    picture: 'ape4_muv3dh'
)
w24 = Work.create!(
    name: 'Psychonaut Ape #628',
    description:'The Astral Explorers of Kaleidoscopic Realms, the Lucid Discoverers of Fractal Wonders.
    Venture into our metaverse for a psychedelic experience like no other!',
    artist: 'Physconaut',
    token_id: 7442,
    blockchain: 'Ethereum',
    price: 2,
    currency: 'Eth',
    picture: 'wow1_dnqvjp'
)


puts "Done! Created #{ Work.count } Works:"
puts Work.pluck( :name).join( ', ' )

##################################################
User.destroy_all

u1 = User.create!(
    name: 'Ann Kuchna',
    dob: '1980/10/29',
    email: 'ann@gmail.com',
    password: 'chicken',
    profile_picture:'u4_jdyipl'
)
u2 = User.create!(
    name: 'Dark Vador',
    dob: '1975/01/11',
    email: 'dark.v@gmail.com',
    password: 'chicken',
    profile_picture:'u2_qpxbev'
)
u3 = User.create!(
    name: 'Bart Simpson',
    dob: '1994/12/12',
    email: 'bart@gmail.com',
    password: 'chicken',
    profile_picture:'u3_tty2vp'
)
u4 = User.create!(
    name: 'Monkey Boo',
    dob: '2000/01/12',
    email: 'monkey@gmail.com',
    password: 'chicken',
    profile_picture:'wow4_ycqlnw'
)

puts "Done! Created #{ User.count } User:"
puts User.pluck( :name).join( ', ' )
u1.works << w1 << w2 << w3 << w17 << w18 << w16
u2.works << w4 << w5 << w6 << w22 << w23 << w24
u3.works << w7 << w8 << w9 << w21 << w20 << w19 << w18
u4.works << w10 << w11 << w12 << w15 << w14 << w13

puts "User #{u1.name} has NTF's #{u1.works.pluck(:name).join(',')}"
puts "NTF '#{w1.name} belongs to #{u1.name}"

###################################################

Property.destroy_all

p1 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Robotic Ice Suite',
    percentage: 5,
    rairty: 'High' 
)
p2 = Property.create!(
    trait: 'Face',
    trait_value: 'Robotic Toxic Mars Mask',
    percentage: 0.1,
    rairty: 'High' 
)
p3 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Alien Space Eye Shirt',
    percentage: 0.6,
    rairty: 'High' 
)
p4 = Property.create!(
    trait: 'Face',
    trait_value: 'Mummy Mask with Laser beam',
    percentage: 0.02,
    rairty: 'High' 
)
p5 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Robotic fighter suite',
    percentage: 10,
    rairty: 'Low' 
)
p6 = Property.create!(
    trait: 'Face',
    trait_value: 'Mummy Mash with Tokyo Sign',
    percentage: 0.9,
    rairty: 'High' 
)
p7 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Black and white hoodie',
    percentage:  0.003,
    rairty: 'Low' 

)
p8 = Property.create!(
    trait: 'Face',
    trait_value: 'Green Monkey with Yellow Eyes',
    percentage:  0.002,
    rairty: 'Medium' 

)
p9 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Shirtless Gold MonKey Fur',
    percentage: 0.23,
    rairty: 'Medium' 
)
p10 = Property.create!(
    trait: 'Face',
    trait_value: 'Gold Monkey with grills',
    percentage: 12,
    rairty: 'Medium' 
)
p11 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Purple Yankies jersey',
    percentage: 9,
    rairty: 'Medium' 
)
p12 = Property.create!(
    trait: 'Face',
    trait_value: 'Light Blue Monkey with Hallow',
    percentage: 3,
    rairty: 'Medium' 
)
p13 = Property.create!(
    trait: 'Background',
    trait_value: 'Space Grey Blurred Buildings',
    percentage:  40,
    rairty: 'Medium' 
)
p14 = Property.create!(
    trait: 'Central Art',
    trait_value: 'Robotic Skull',
    percentage: 29, 
    rairty: 'Medium' 
    
)
p15 = Property.create!(
    trait: 'Background',
    trait_value: 'Light Blue Sky with Clouds',
    percentage:  70,
    rairty: 'Medium' 
)
p16 = Property.create!(
    trait: 'Central Art',
    trait_value: 'Leaning Robotic Space Building',
    percentage:  10,
    rairty: 'Medium' 
)
p17 = Property.create!(
    trait: 'Background',
    trait_value: 'Futuristic Building with Pink Sky',
    percentage: 0.2, 
    rairty: 'Low' 
)
p18 = Property.create!(
    trait: 'Central Art',
    trait_value: 'Lost Human in Dyspotian World',
    percentage: 12,
    rairty: 'Low' 
)
p19 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Thanos Armor with Infinity Gauntlet',
    percentage: 12,
    rairty: 'Low' 
)
p20 = Property.create!(
    trait: 'Face',
    trait_value: 'Mad Monkey with Thanos Helmet',
    percentage: 32,
    rairty: 'Low' 
)
p21 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Red Checkered Shirt',
    percentage: 30,
    rairty: 'Low' 
)
p22 = Property.create!(
    trait: 'Face',
    trait_value: 'Wizard Monkehy with Dimond Earing',
    percentage: 0.22,
    rairty: 'Low' 
)
p23 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Shirtless Grey Monkey moving hair',
    percentage: 12,
    rairty: 'Low' 

)
p24 = Property.create!(
    trait: 'Face',
    trait_value: 'Cowboy Hat Monkey',
    percentage: 0.2,
    rairty: 'Low' 
)
p25 = Property.create!(
    trait: 'Body',
    trait_value: 'Space telephone',
    percentage: 0.2,
    rairty: 'Low' 
)
p26 = Property.create!(
    trait: 'Body',
    trait_value: 'Rainbow drinks',
    percentage: 0.2,
    rairty: 'Low' 
)
p27 = Property.create!(
    trait: 'Body',
    trait_value: 'Solar System',
    percentage: 0.2,
    rairty: 'High' 
)
p28 = Property.create!(
    trait: 'Background',
    trait_value: 'Changing colors rainbow gif',
    percentage: 0.4,
    rairty: 'High' 
)
p29 = Property.create!(
    trait: 'Background',
    trait_value: 'Changing colors rainbow gif',
    percentage: 0.4,
    rairty: 'High' 
)
p30 = Property.create!(
    trait: 'Background',
    trait_value: 'Changing colors rainbow gif',
    percentage: 0.4,
    rairty: 'High' 
)
p31 = Property.create!(
    trait: 'Background',
    trait_value: 'Changing colors rainbow gif',
    percentage: 0.4,
    rairty: 'High' 
)
p32 = Property.create!(
    trait: 'Background',
    trait_value: 'Changing colors rainbow gif',
    percentage: 0.4,
    rairty: 'High' 
)
p33 = Property.create!(
    trait: 'Background',
    trait_value: 'Changing colors rainbow gif',
    percentage: 0.4,
    rairty: 'High' 
)
p34 = Property.create!(
    trait: 'Clothes',
    trait_value: 'Bright orange jacket',
    percentage: 0.4,
    rairty: 'High' 
)
p35 = Property.create!(
    trait: 'Clothes',
    trait_value: 'Cloud lava red shirt',
    percentage: 0.4,
    rairty: 'High' 
)
p36 = Property.create!(
    trait: 'Clothes',
    trait_value: 'Gold Ape King Armor',
    percentage: 0.4,
    rairty: 'High' 
)


puts "Done! Created #{ Property.count } Property:"
puts Property.pluck( :trait).join( ', ' )
w1.properties << p1 << p2
w2.properties << p3 << p4
w3.properties << p5 << p6
w4.properties << p7 << p8
w5.properties << p9 << p10
w6.properties << p11 << p12
w7.properties << p13 << p14
w8.properties << p15 << p16
w9.properties << p17 << p18
w10.properties << p19 << p20
w11.properties << p21 << p22
w12.properties << p23 << p24
w13.properties << p25 
w14.properties << p26 
w15.properties << p27 
w16.properties << p28 
w17.properties << p29 
w18.properties << p30 
w19.properties << p31 
w20.properties << p32 
w21.properties << p33 
w22.properties << p34 
w23.properties << p35 
w24.properties << p36 

puts "NFT #{w1.name} has properties #{w1.properties.pluck(:trait_value).join(',')}"
puts "Property '#{p1.trait_value} belongs to #{w1.name}"

###################################################
print "Creating genres"

Genre.destroy_all
g1 = Genre.create!(
 name: 'Futuristic',
 genre_picture: 'future_fuqxx9'
 ) 
g2 = Genre.create!(
 name: '3D Rendered art',
 genre_picture: '3D_x0wooi'
 ) 

 g3 = Genre.create!(
 name: 'Anime',
 genre_picture: 'anime_frvhff'
 ) 

 g4 = Genre.create!(
 name: 'Pixelated',
 genre_picture: 'pix_xlz70h'
 ) 

 g5 = Genre.create!(
 name: 'Memes',
 genre_picture: 'memes_v35kfo'
 ) 

 g6 = Genre.create!(
 name: 'Gifs',
 genre_picture: 'unnamed_qpvctg'
 ) 

 g7 = Genre.create!(
 name: 'Photographs',
 genre_picture: 'photo_feo75p'
 ) 

 g8 = Genre.create!(
 name:  'Pop Culture',
 genre_picture: 'pop_zdepe6'
 ) 

 g9 = Genre.create!(
 name:  'Sports',
 genre_picture:'sports_dpfru4'
 )

 g10 = Genre.create!(
 name: 'Collectables',
 genre_picture:'collectables_iuvfzj'
 ) 

puts "created #{Genre.count}' genres"

w1.genres << g1 << g2
w2.genres << g1 << g2
w3.genres << g1 << g2 << g3
w4.genres << g2 << g8
w5.genres << g2 << g8
w6.genres << g2 << g8 << g9
w7.genres << g1 << g2 << g7
w8.genres << g1 << g2 << g7
w9.genres << g1 << g2 << g7
w10.genres << g6 << g8
w11.genres << g6 << g8
w12.genres << g6 << g8
w13.genres << g1 << g8 
w14.genres << g1 << g8 
w15.genres << g1 << g8 
w16.genres << g3 << g6 
w17.genres << g3 << g6 
w18.genres << g3 << g6 
w19.genres << g3 << g6 
w20.genres << g3 << g6 
w21.genres << g3 << g6 
w22.genres << g10 
w23.genres << g10 
w24.genres << g10 

###################################################
print "Creating Bids"

Bid.destroy_all
b1 = Bid.create!(
 price: 12,
 currency: 'Eth',
 blockchain: 'Ethereum'
 ) 
b2 = Bid.create!(
 price: 1,
 currency: 'Eth',
 blockchain: 'Ethereum'
 ) 

 b3 = Bid.create!(
price: 2,
currency: 'Eth',
blockchain: 'Ethereum'
 ) 

 b4 = Bid.create!(
price: 0.1,
currency: 'Eth',
blockchain: 'Ethereum'
 ) 
 puts "created #{Bid.count}' Bids"

 u1.bids << b1 << b2
 u2.bids << b3 << b4
 w4.bids << b1 << b2
 w8.bids << b3 << b4