# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(antony jeff matt jason).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email,
               password: 'abc123',
               password_confirmation: nil)
end

movies = Category.create(name: 'Movies', user_id: 1)
books = Category.create(name: 'Books', user_id: 1)

scream = Thing.create(name: 'Scream', category_id: movies.id);
jaws = Thing.create(name: 'Jaws', category_id: movies.id);

it = Thing.create(name: 'It', category_id: books.id);

# my_list = CategoryContent.create(category_id: movies.id, thing_id: scream.id)
# CategoryContent.create(category_id: movies.id, thing_id: jaws.id)
# CategoryContent.create(category_id: books.id, thing_id: it.id);
