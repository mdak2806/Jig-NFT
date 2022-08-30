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
    picture: 'sophie1.png'
)

w2 = Work.create!(
    name: 'Infected Mob #2',
    description: 'A collection of deranged and savage mobsters spreading across Solana.' ,
    artist: 'Sophie',
    token_id: 2873,
    blockchain:'Solana',
    price: 10,
    currency: 'Sol' ,
    picture: 'sophie2.png'

)

w3 = Work.create!(
    name: 'Infected Mob #3',
    description: 'A collection of deranged and savage mobsters spreading across Solana.' ,
    artist: 'Sophie' ,
    token_id: 3887, 
    blockchain: 'Solana',
    price: 3,
    currency: 'Sol',
    picture: 'sophie3.png'
)

w4 = Work.create!(
    name: 'Steezy Ape #1',
    description: 'Collection of street apes swagged out and dripped out',
    artist: 'Pop',
    token_id: 3778, 
    blockchain: 'Ethereum',
    price: 100,
    currency: "Eth" ,
    picture: 'ape1.png'
)

w5 = Work.create!(
    name: 'Steezy Ape #2',
    description: 'Collection of street apes swagged out and dripped out',
    artist: 'Pop',
    token_id: 3778,    
    blockchain: 'Ethereum',
    price: 78,
    currency: "Eth" ,
    picture: 'ape2.png'
)

w6 = Work.create!(
    name: 'Steezy Ape #3',
    description: 'Collection of street apes swagged out and dripped out',
    artist: 'Pop',
    token_id: 3774,    
    blockchain: 'Ethereum',
    price: 30,
    currency: "Eth" ,
    picture: 'ape3.png'
)

w7 = Work.create!(
    name: 'Solider of Fortune',
    description: 'This collection is an exploration of other-worldly cityscapes and dark fantasies in the visual aesthetic of BEEBLE distinct style with abstract digital paint in psychedelic colors.',
    artist: 'Beeble',
    token_id: 2929,
    blockchain: 'Ethereum',
    price: 200,
    currency: 'Eth',
    picture: 'sold1.png'
)

w8 = Work.create!(
    name: 'Peace in this life',
    description:'This collection is an exploration of other-worldly cityscapes and dark fantasies in the visual aesthetic of BEEBLE distinct style with abstract digital paint in psychedelic colors.',
    artist: 'Beeble' ,
    token_id: 2929,
    blockchain: 'Ethereum',
    price: 223,
    currency: 'Eth',
    picture: 'sold2.png'
)
w9 = Work.create!(
    name: 'Never get rich',
    description: 'This collection is an exploration of other-worldly cityscapes and dark fantasies in the visual aesthetic of BEEBLE distinct style with abstract digital paint in psychedelic colors.',
    artist: 'Beeble',
    token_id: 2929,   
    blockchain: 'Ethereum',
    price: 100,
    currency: 'Eth',
    picture: 'sold3.png'
)

w10 = Work.create!(
    name: 'The Snap',
    description: 'Collection of Gifapes reflecting pop culture in the 21st Century',
    artist: 'Gifapes',
    token_id: 2442,   
    blockchain: 'Ethereum',
    price: 4,
    currency: 'Eth',
    picture: 'gifape1.gif'
)


w11 = Work.create!(
    name: 'Magnificent Magic',
    description: 'Collection of Gifapes reflecting pop culture in the 21st Century',
    artist: 'Gifapes',
    token_id: 2442,    
    blockchain: 'Ethereum',
    price: 6,
    currency: 'Eth',
    picture: 'GifAp2.gif'
)

w12 = Work.create!(
    name: 'Western Showdown',
    description:'Collection of Gifapes reflecting pop culture in the 21st Century',
    artist: 'Gifapes',
    token_id: 2442,
    blockchain: 'Ethereum',
    price: 3,
    currency: 'Eth',
    picture: 'gifApe3.gif'
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
    profile_picture:'u1.png'
)
u2 = User.create!(
    name: 'Dark Vador',
    dob: '1975/01/11',
    email: 'dark.v@gmail.com',
    password: 'chicken',
    profile_picture:'u2.png'
)
u3 = User.create!(
    name: 'Bart Simpson',
    dob: '1994/12/12',
    email: 'bart@gmail.com',
    password: 'chicken',
    profile_picture:'u3.png'
)
u4 = User.create!(
    name: 'Monkey Boo',
    dob: '2000/01/12',
    email: 'monkey@gmail.com',
    password: 'chicken',
    profile_picture:'u4.png'
)

puts "Done! Created #{ User.count } User:"
puts User.pluck( :name).join( ', ' )
u1.works << w1 << w2 << w3 
u2.works << w4 << w5 << w6
u3.works << w7 << w8 << w9
u4.works << w10 << w11 << w12

puts "User #{u1.name} has NTF's #{u1.works.pluck(:name).join(',')}"
puts "NTF '#{w1.name} belongs to #{u1.name}"

###################################################

Property.destroy_all

p1 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Robotic Ice Suite',
    percentage: 5 
)
p2 = Property.create!(
    trait: 'Face',
    trait_value: 'Robotic Toxic Mars Mask',
    percentage: 0.1 
)
p3 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Alien Space Eye Shirt',
    percentage: 0.6 
)
p4 = Property.create!(
    trait: 'Face',
    trait_value: 'Mummy Mask with Laser beam',
    percentage: 0.02
)
p5 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Robotic fighter suite',
    percentage: 10 
)
p6 = Property.create!(
    trait: 'Face',
    trait_value: 'Mummy Mash with Tokyo Sign',
    percentage: 0.9
)
p7 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Black and white hoodie',
    percentage:  0.003
)
p8 = Property.create!(
    trait: 'Face',
    trait_value: 'Green Monkey with Yellow Eyes',
    percentage:  0.002
)
p9 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Shirtless Gold MonKey Fur',
    percentage: 0.23
)
p10 = Property.create!(
    trait: 'Face',
    trait_value: 'Gold Monkey with grills',
    percentage: 12 
)
p11 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Purple Yankies jersey',
    percentage: 9
)
p12 = Property.create!(
    trait: 'Face',
    trait_value: 'Light Blue Monkey with Hallow',
    percentage: 3 
)
p13 = Property.create!(
    trait: 'Background',
    trait_value: 'Space Grey Blurred Buildings',
    percentage:  40
)
p14 = Property.create!(
    trait: 'Central Art',
    trait_value: 'Robotic Skull',
    percentage: 29 
)
p15 = Property.create!(
    trait: 'Background',
    trait_value: 'Light Blue Sky with Clouds',
    percentage:  70
)
p16 = Property.create!(
    trait: 'Central Art',
    trait_value: 'Leaning Robotic Space Building',
    percentage:  10
)
p17 = Property.create!(
    trait: 'Background',
    trait_value: 'Futuristic Building with Pink Sky',
    percentage: 0.2 
)
p18 = Property.create!(
    trait: 'Central Art',
    trait_value: 'Lost Human in Dyspotian World',
    percentage: 12  
)
p19 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Thanos Armor with Infinity Gauntlet',
    percentage: 12
)
p20 = Property.create!(
    trait: 'Face',
    trait_value: 'Mad Monkey with Thanos Helmet',
    percentage: 32 
)
p21 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Red Checkered Shirt',
    percentage: 30
)
p22 = Property.create!(
    trait: 'Face',
    trait_value: 'Wizard Monkehy with Dimond Earing',
    percentage: 0.22 
)
p23 = Property.create!(
    trait: 'Clothing',
    trait_value: 'Shirtless Grey Monkey moving hair',
    percentage: 12 
)
p24 = Property.create!(
    trait: 'Face',
    trait_value: 'Cowboy Hat Monkey',
    percentage: 0.2
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

puts "NFT #{w1.name} has properties #{w1.properties.pluck(:trait_value).join(',')}"
puts "Property '#{p1.trait_value} belongs to #{w1.name}"

###################################################
print "Creating genres"

Genre.destroy_all
g1 = Genre.create!(
 name: 'Futuristic',
 genre_picture: 'future.png'
 ) 
g2 = Genre.create!(
 name: '3D Rendered art',
 genre_picture: '3D.png'
 ) 

 g3 = Genre.create!(
 name: 'Anime',
 genre_picture: 'anime.png'
 ) 

 g4 = Genre.create!(
 name: 'Pixelated',
 genre_picture: 'pix.png'
 ) 

 g5 = Genre.create!(
 name: 'Memes',
 genre_picture: 'memes.gif'
 ) 

 g6 = Genre.create!(
 name: 'Gifs',
 genre_picture: 'gify.gif'
 ) 

 g7 = Genre.create!(
 name: 'Photographs',
 genre_picture: 'photo.png'
 ) 

 g8 = Genre.create!(
 name:  'Pop Culture',
 genre_picture: 'pop.png'
 ) 

 g9 = Genre.create!(
 name:  'Sports',
 genre_picture:'sports.png'
 )

 g10 = Genre.create!(
 name: 'Collectables',
 genre_picture:'collectables.png'
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

###################################################
print "Creating Bids"

Bid.destroy_all
b1 = Bid.create!(
 price: 12,
 currency: 'Eth',
 blockchain: 'Etherum'
 ) 
b2 = Bid.create!(
 price: 1,
 currency: 'Eth',
 blockchain: 'Etherum'
 ) 

 b3 = Bid.create!(
price: 2,
currency: 'Eth',
blockchain: 'Etherum'
 ) 

 b4 = Bid.create!(
price: 0.1,
currency: 'Eth',
blockchain: 'Etherum'
 ) 
 puts "created #{Bid.count}' Bids"

 u1.bids << b1 << b2
 u2.bids << b3 << b4
 w4.bids << b1 << b2
 w8.bids << b3 << b4