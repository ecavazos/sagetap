# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#

root = User.create({
    :email    => 'root@trunk.local'
    :name     => 'root'
    :password => '1234'
  })

root.quotes.create({
  :text => 'Do not overrate what you have received, nor envy others. He who envies others does not obtain peace of mind.',
  :author => 'Buddha',
  :author_link => 'http://en.wikipedia.org/wiki/Buddha'
})
