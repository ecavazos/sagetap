# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

root = User.create({
         :email      => 'root@sagetap.com',
         :first_name => 'Mike',
         :last_name  => 'Hunt',
         :username   => 'root',
         :password   => '123456'
       })

Category.create(:name => 'Beer')
Category.create(:name => 'Business')
Category.create(:name => 'Design')
Category.create(:name => 'Humor')
Category.create(:name => 'Music')

philosophy = Category.create(:name => 'Philosophy')
Category.create(:name => 'Software Development')

root.quotes.create({
  :text => 'Do not overrate what you have received, nor envy others. He who envies others does not obtain peace of mind.',
  :author => 'Buddha',
  :author_link => 'http://en.wikipedia.org/wiki/Buddha',
  :category => philosophy
})
