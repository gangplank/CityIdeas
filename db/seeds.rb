# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

statuses = Status.create([{ name: 'under review' }, 
                        { name: 'planned' }, 
                        { name: 'started' }, 
                        { name: 'completed' }, 
                        { name: 'declined' }])
                        
Idea.create(title: 'My New Idea',
            description: 'This idea just came to me.  Like it?',
            status_id: statuses.first.id)

Idea.create(title: 'My Great Idea',
            description: 'I know they will accept this one.',
            status_id: statuses[1].id)
