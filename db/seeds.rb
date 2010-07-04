# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

root = User.create({
         :email      => 'root@sagetap.com',
         :first_name => 'Mike',
         :last_name  => 'Hunt',
         :uesrname   => 'root',
         :password   => '123456'
       })

root.quotes.create({
  :text => 'Do not overrate what you have received, nor envy others. He who envies others does not obtain peace of mind.',
  :author => 'Buddha',
  :author_link => 'http://en.wikipedia.org/wiki/Buddha'
})
