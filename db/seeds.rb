# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!({:email => "user@cityideas.com", :is_admin => false, :password => "password", :password_confirmation => "password" })
User.create!({:email => "admin@cityideas.com", :is_admin => true, :password => "password", :password_confirmation => "password" })

categories = Category.create([{ name: 'City Wide' }, 
                              { name: '85224 - North Central Chandler' }, 
                              { name: '85225 - Downtown Chandler' }, 
                              { name: '85226 - South West Chandler' }, 
                              { name: '85244 - Government Complex' }, 
                              { name: '85246 - North West Chandler' }, 
                              { name: '85248 - Ocotillo / Sun Lakes' }, 
                              { name: '85249 - South Chandler' }, 
                              { name: '85286 - Central Chandler' }])


statuses = Status.create([{ name: 'under review' }, 
                        { name: 'planned' }, 
                        { name: 'started' }, 
                        { name: 'completed' }, 
                        { name: 'declined' }])
                        
Idea.create(title: 'My New Idea',
            description: 'This idea just came to me.  Like it?',
            status_id: statuses.first.id,
            category_id: categories.first.id)

Idea.create(title: 'My Great Idea',
            description: 'I know they will accept this one.',
            status_id: statuses[1].id,
            category_id: categories[1].id)
