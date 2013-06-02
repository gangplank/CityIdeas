CityIdeas
=========

Submit ideas to make your place better, and vote for them.

** How to Contribute **

If you would like to contribute to this repository, first fork the project on GitHub (https://github.com/gangplank/CityIdeas).

*** Development Environment ***

This project was developed using Rails 3.2.13 and Ruby 1.9.3.

Assuming you are using RVM, you can follow these steps (in Terminal etc.) to get started:

 - cd ~ (or the directory where you put your code projects)
 - git clone git@github.com:gangplank/CityIdeas.git
 - rvm use ruby-1.9.3@CityIdeas --create
 - cd CityIdeas
 - bundle install
 - rake db:create && rake db:migrate && rake db:seed
 - rails s

