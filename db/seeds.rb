# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Item.destroy_all
#  Category.destroy_all
# Comment.destroy_all
# User.destroy_all

# Category.create({name: 'Electronics'})
# Category.create({name: 'Home Goods'})
# Category.create({name: 'Toys'})
# Category.create({name: 'Outdoors'})


# music = Category.create({name: 'Music'})

# i1 = Item.create({
#     price: 10.99,
#     image_url: 'https://upload.wikimedia.org/wikipedia/en/b/bf/Johnny_Cash_At_Folsom_Prison.jpg',
#     des: 'cool',
#     name: 'Johnny Cash',
#     category_id: music.id
# })

# i2 = Item.create({
#     price: 12.99,
#     image_url: 'https://images-na.ssl-images-amazon.com/images/I/71lihpBB0aL._SX522_.jpg',
#     des: 'cool',
#     name: 'Luciano',
#     category_id: music.id
# })



# movie = Category.create({name: 'Movie'})

# i3 = Item.create({
#     price: 15.99,
#     image_url: 'https://upload.wikimedia.org/wikipedia/en/b/b8/Spider-Man_Into_the_Spider-Verse_%282018_poster%29.png',
#     des: 'cool',
#     name: 'SpiderMan',
#     category_id: movie.id
# })

# i4 = Item.create({
#     price: 16.99,
#     image_url: 'https://upload.wikimedia.org/wikipedia/en/7/71/GhostRiderBigPoster.jpg',
#     des: 'Not cool',
#     name: 'Ghost',
#     category_id: movie.id
# })


#electronics = Category.find_by( name: 'Electronics')

#_______________________________________________________________________
#_______________________________________________________________________
#_______________________________________________________________________
#_______________________________________________________________________

movies = Category.find_by( name: 'Movies')
vinyl = Category.find_by( name: 'Vinyl')
food = Category.find_by( name: 'Food')

electronics = Category.create( {name: 'Electronics'})
outdoors = Category.create({name: 'Outdoors'})
home_goods = Category.create({name: 'Home Goods'})
toys = Category.create({name: 'Toys'})

 
item_1 = Item.create({
    price: 199.99,
    image_url: 'https://www.cheatsheet.com/wp-content/uploads/2016/03/Petcube_Camera_Light1.png',
    des: '24/7 ULTIMATE PET MONITORING: With Petcube Play 2 Wi-Fi pet cam, check on your pet anytime form your phone with 1080p HD video, 160° utlra-wide-angle view, and night vision. See up close with 4x zoom. Get real-time sound and motion alerts.
    QUICK 2-MINUTE SETUP: Petcube Play 2 is the only pet camera to support 2. 4Ghz and 5Ghz Wi-Fi connections. iOS 11 and higher, Android 7. 1. 2 and higher are required.',
    name: 'PetCube',
    category_id: electronics.id
})

item_2 = Item.create({
    price: 4.99,
    image_url: 'https://upload.wikimedia.org/wikipedia/en/9/94/SMB_Movie_Poster.jpg',
    des: 'Super Mario Bros. (also known as Super Mario Bros.: The Movie) is a 1993 American adventure comedy film[6] loosely based on the Mario video game series by Nintendo. The film was directed by the husband-and-wife team of Rocky Morton and Annabel Jankel, written by Parker Bennett, Terry Runté and Ed Solomon and distributed by Walt Disney Studios through Hollywood Pictures. Its story follows the Mario brothers (Bob Hoskins and John Leguizamo) in their quest to rescue Princess Daisy (Samantha Mathis) from a dystopic parallel universe ruled by the ruthless President Koopa (Dennis Hopper).',
    name: 'Super Mario Bros. DVD',
    category_id: movies.id
})

item_3 = Item.create({
    price: 4.99,
    image_url: 'https://upload.wikimedia.org/wikipedia/en/9/93/Sharknado_poster.jpg',
    des: 'Sharknado is a 2013 American made-for-television sci-fi disaster film about a waterspout that lifts sharks out of the ocean and deposits them in Los Angeles. It is the first installment in the Sharknado film series.[3][4] It first aired on the Syfy channel on July 11, 2013, and stars Tara Reid, Ian Ziering, John Heard and Cassie Scerbo.[5] It was also given a one-night-only special midnight theatrical screening via Regal Cinemas and NCM Fathom Events, where it earned $200,000 from 200 screenings.[6][7] The over-the-top premise and theatrics of the film quickly earned it a cult following.',
    name: 'Sharknado DVD',
    category_id: movies.id
})

item_4 = Item.create({
    price: 4.99,
    image_url: 'https://www.dollargeneral.com/media/catalog/product/cache/6e5ff7de2a46bb5e4325e62839d28016/0/0/00829801_spam_classic_main.jpg',
    des: 'Spamming is the use of messaging systems to send an unsolicited message (spam) to large numbers of recipients for the purpose of commercial advertising, for the purpose of non-commercial proselytizing, or for any prohibited purpose (especially the fraudulent purpose of phishing). While the most widely recognized form of spam is email spam, the term is applied to similar abuses in other media: instant messaging spam, Usenet newsgroup spam, Web search engine spam, spam in blogs, wiki spam, online classified ads spam, mobile phone messaging spam, Internet forum spam, junk fax transmissions, social spam, spam mobile apps,[1] television advertising and file sharing spam. It is named after Spam, a luncheon meat, by way of a Monty Python sketch about a restaurant that has Spam in almost every dish and where vikings annoyingly sing "Spam" over and over again.[2]',
    name: 'spam',
    category_id: food.id
})

item_5 = Item.create({
    price: 9.99,
    image_url: 'https://upload.wikimedia.org/wikipedia/en/7/70/Furby_picture.jpg',
    des: 'Furby is an American electronic robotic toy that was originally released in 1998 by Tiger Electronics. It resembles a hamster or owllike creature and went through a period of being a "must-have" toy following its holiday season launch, with continual sales until 2000. Over 40 million Furbies were sold during the three years of its original production, with 1.8 million sold in 1998, and 14 million in 1999. Its speaking capabilities were translated into 24 languages.',
    name: 'Furby',
    category_id: toys.id
})

item_6 = Item.create({
    price: 39.99,
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT37r5UjCbfMx-x1pi9DoJ1i7nxQpFduX1xmn2dO9r8D9w0Gq_d67UWTICLMLA&usqp=CAc',
    des: 'Selfie Toaster Will Let You Eat Your Face On Toast, Every Morning',
    name: 'Selfie Toaster',
    category_id: electronics.id
})

item_7 = Item.create({
    price: 29.99,
    image_url: 'https://upload.wikimedia.org/wikipedia/en/3/3c/Mother_Earths_Plantasia_Cover.jpg',
    des: "Mother Earth's Plantasia is an electronic album by Mort Garson first released in 1976. The music on it was composed specifically for plants to listen to.[6] The album had a very limited distribution upon release, only being available to people who bought a houseplant from a store called Mother Earth in Los Angeles or those who purchased a Simmons mattress from a Sears outlet, both of which came with the record.[6] As a result, the album failed to attain widespread popularity around the time of its release. However, it has since gained a cult following as an early work of electronic music.[7] Garson used a Moog synthesizer to compose the album.[6]",
    name: 'Plantasia (vinyl)',
    category_id: vinyl.id
})

item_8 = Item.create({
    price: 250.00,
    image_url: "https://uncrate.com/assets_c/2011/03/jakpak-stretched-thumb-960x640-12662.jpg",
    des: "When is a jacket not a jacket? When its a sleeping bag and tent as well. The JakPak combines a waterproof rain jacket, sleeping bag, and tent into a single piece of clothing, made from 3.1 oz urethane coated ripstop nylon, with the sleeping bag folding down from the inside of the jacket's rear, the tent folding out of a pocket on the back, and your traditional hiking backpack looking forlorn as its reason for being slips away.",
    name: 'JakPak',
    category_id: outdoors.id
})

item_9 = Item.create({
    price: 24.99,
    image_url: 'https://cdn.thisiswhyimbroke.com/images/pillow-tv-remote-control-640x533.jpg',
    des: 'Stop rummaging through your sofa pillows looking for the remote control. Because now your pillow is the TV remote control! This pillow remote control is a universal all in one TV remote with an auto shutoff feature so you don’t mash the controls while you’re lying on it.',
    name: 'Remote Control Pillow',
    category_id: home_goods.id
})

item_10 = Item.create({
    price: 15.99,
    image_url: 'https://images-na.ssl-images-amazon.com/images/I/71DawbUDc4L._SL1280_.jpg',
    des: 'Impress your friends and intimidate your frenemies with Smoked Rattlesnake. A can of Smoked Rattlesnake is a gift worth a thousand words. It’s also really tasty! 100% snake meat in a rich broth that you can eat straight out of the can, or over a bit of wild rice or pasta. Contains 4 oz of Smoked Rattlesnake meat and 3.5 oz of seasoned broth. Smoked Rattlesnake is something you have to try to believe. Once you do, you’ll come back for more. This makes a terrific unusual gift or a fun donation to a potluck, game day, or any occasion. The meat also contains bones that need to be removed prior to eating.',
    name: 'Canned Rattle Snake Meat',
    category_id: food.id
})

item_11 = Item.create({
    price: 99.99,
    image_url: 'https://images-na.ssl-images-amazon.com/images/I/715UT80ilAL._AC_SL1500_.jpg',
    des: "Finally, mop without mopping! It doesn't get any easier than this! Fun!! Let's be honest, it's really not suitable for large cleaning projects. But this neat little gadget will make a good cleaning device for small areas, or small messes and spills. Strapya World ships all items directly from Japan",
    name: 'Remote Control Mop',
    category_id: home_goods.id
})

item_12 = Item.create({
    price: 4.99,
    image_url: 'https://upload.wikimedia.org/wikipedia/en/8/87/Mac_and_me_movie_poster.jpg',
    des: "Mac and Me is a 1988 American comic science fiction film co-written (with Steve Feke) and directed by Stewart Raffill. Starring Christine Ebersole, Jonathan Ward and Tina Caspary alongside Lauren Stanley and Jade Calegory, the film centers on a 'Mysterious Alien Creature' (MAC) that escapes from nefarious NASA agents and is befriended by a wheelchair-using boy named Eric Cruise. Together, Eric and MAC try to find MAC's family, from whom he has been separated.",
    name: 'Mac and Me DVD',
    category_id: movies.id
})

item_13 = Item.create({
    price: 39.99,
    image_url: 'https://www.uncommongoods.com/images/items/21300/21356_1_640px.jpg',
    des: 'Let your cat scratch some laid-back beats with this cardboard scratching pad shaped like a DJ turntable.',
    name: 'DJ Cat Scratching Pad',
    category_id: toys.id
})

item_14 = Item.create({
    price: 24.99,
    image_url: 'https://images-na.ssl-images-amazon.com/images/I/31rm85f2mwL._AC_.jpg',
    des: 'Imagine yourself in a situation where you are solving a critical technical problem on your computer and you are in need of weighing something. You don’t have to look for a weighing scale, there’s one integrated right beneath your mouse body!  This USB mouse comes with a built-in scale and a digital readout. But, the scale won’t be able to measure the weight of your luggage that you may be taking along in a flight that you booked on your computer. However, the manufacturer says that this device does have a practical use. It can entertain a computer user and reduce work stress! So, now you know how useful technologies like these can be.',
    name: 'USB Mouse with Digital Scale',
    category_id: electronics.id
})


#----------------------------------------------------------------------------
#----------------------------------------------------------------------------
#----------------------------------------------------------------------------
#----------------------------------------------------------------------------

fake_user1 = User.create(username: Faker::Name.name, age: 44, email: Faker::Internet.email, password: 'aaa')
fake_user2 = User.create(username: Faker::Name.name, age: 44, email: Faker::Internet.email, password: 'aaa')
fake_user3 = User.create(username: Faker::Name.name, age: 44, email: Faker::Internet.email, password: 'aaa')
fake_user4 = User.create(username: Faker::Name.name, age: 44, email: Faker::Internet.email, password: 'aaa')
fake_user5 = User.create(username: Faker::Name.name, age: 44, email: Faker::Internet.email, password: 'aaa')
fake_user6 = User.create(username: Faker::Name.name, age: 44, email: Faker::Internet.email, password: 'aaa')
fake_user7 = User.create(username: Faker::Name.name, age: 44, email: Faker::Internet.email, password: 'aaa')
fake_user8 = User.create(username: Faker::Name.name, age: 44, email: Faker::Internet.email, password: 'aaa')
fake_user9 = User.create(username: Faker::Name.name, age: 44, email: Faker::Internet.email, password: 'aaa')


item_1 = Item.find_by( name: 'USB Mouse with Digital Scale')
item_2 = Item.find_by( name: 'Remote Control Mop')
item_3 = Item.find_by( name: 'Remote Control Pillow')
item_4 = Item.find_by( name: 'Selfie Toaster')
item_5 = Item.find_by( name: 'Sharknado DVD')
item_6 = Item.find_by( name: 'DJ Cat Scratching Pad')
item_7 = Item.find_by( name: 'Furby')



fake_comment_1 = Comment.create(user_id: fake_user1.id, item_id: item_1.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_2 = Comment.create(user_id: fake_user2.id, item_id: item_2.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_3 = Comment.create(user_id: fake_user3.id, item_id: item_3.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_4 = Comment.create(user_id: fake_user4.id, item_id: item_4.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_5 = Comment.create(user_id: fake_user5.id, item_id: item_5.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_6 = Comment.create(user_id: fake_user6.id, item_id: item_1.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_7 = Comment.create(user_id: fake_user7.id, item_id: item_2.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_8 = Comment.create(user_id: fake_user8.id, item_id: item_3.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_9 = Comment.create(user_id: fake_user9.id, item_id: item_4.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_10 = Comment.create(user_id: fake_user1.id, item_id: item_6.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_11 = Comment.create(user_id: fake_user2.id, item_id: item_7.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_12 = Comment.create(user_id: fake_user3.id, item_id: item_6.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_13 = Comment.create(user_id: fake_user4.id, item_id: item_7.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_14 = Comment.create(user_id: fake_user5.id, item_id: item_6.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )
fake_comment_15 = Comment.create(user_id: fake_user6.id, item_id: item_7.id, title: Faker::BossaNova.song, content: Faker::Quotes::Shakespeare.king_richard_iii_quote, rating: 3 )


