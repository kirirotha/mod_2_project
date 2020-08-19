# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 Item.destroy_all
 Category.destroy_all
 
music = Category.create({name: 'Music'})

i1 = Item.create({
    price: 10.99,
    image_url: 'https://upload.wikimedia.org/wikipedia/en/b/bf/Johnny_Cash_At_Folsom_Prison.jpg',
    des: 'cool',
    name: 'Johnny Cash',
    category_id: music.id
})

i2 = Item.create({
    price: 12.99,
    image_url: 'https://images-na.ssl-images-amazon.com/images/I/71lihpBB0aL._SX522_.jpg',
    des: 'cool',
    name: 'Luciano',
    category_id: music.id
})



movie = Category.create({name: 'Movie'})

i3 = Item.create({
    price: 15.99,
    image_url: 'https://upload.wikimedia.org/wikipedia/en/b/b8/Spider-Man_Into_the_Spider-Verse_%282018_poster%29.png',
    des: 'cool',
    name: 'SpiderMan',
    category_id: movie.id
})

i4 = Item.create({
    price: 16.99,
    image_url: 'https://upload.wikimedia.org/wikipedia/en/7/71/GhostRiderBigPoster.jpg',
    des: 'Not cool',
    name: 'Ghost',
    category_id: movie.id
})
