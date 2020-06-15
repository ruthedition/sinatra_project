Wine Collections 
A website using a Sinatra framework to allow users the ability of creating an account they can manage to keep a record of wines they want to keep track of. The website allows users to create a new bottle of wine, update, and delete it. Users are also able to edit their account information in the account settings. Information such as the name of the wine, country, type, price, and the year sealed are information that the user is able to record for their collection.

Getting Started
To get the application started run shotgun in your terminal and then go to your browser and open "http://localhost:9393".

Prerequisites
What things you need to install the software and how to install them.
bundle install 
rake console 
rake db:migrate 

Installation
Clone the repo
git clone https://github.com/Rkebede/sinatra_project.git
Install the gemfile packages
bundle install
Created a secrets.rb file and enter your ENV variables:
ENV['SESSION_SECRET'] = "PUT_SECRET_CODE"

Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/Rkebede/sinatra_project. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the code of conduct.

License
The gem is available as open source under the terms of the MIT License.

Code of Conduct
Everyone interacting in the Weather project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.
