# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
b1 = Bicycle.create({ name: 'Mountain bikes' })

i1 = Item.create({ Name: 'Wheel Size', bicycle_id: b1.id })
i1o1 = Option.create(Name: '17', item: i1)
i1o2 = Option.create(Name: '19', item: i1)
i1o3 = Option.create(Name: '21', item: i1)

i2 = Item.create({ Name: 'Rim Color', bicycle_id: b1.id })
i2o1 = Option.create(Name: 'Red', item: i2)
i2o2 = Option.create(Name: 'Blue', item: i2)
i3o3 = Option.create(Name: 'Green', item: i2)

i3 = Item.create({ Name: 'Saddle Color', bicycle_id: b1.id })
i3o1 = Option.create(Name: 'Red', item: i3)
i3o2 = Option.create(Name: 'Black', item: i3)
i3o3 = Option.create(Name: 'Yellow', item: i3)

# Linkage.create({ parent_id: 1, child_id: 1})
# , { Name: 'Rim Color' }, { Name: 'Saddle Color' }]