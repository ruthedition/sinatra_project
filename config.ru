require 'config/environment'
require 'require_all'

use Rack::MethodOverride
use WinesController
use UsersController
run ApplicationController

require_all 'app'



touch config.ru
~/.../projects/sinatra_project // ♥ > mkdir app
~/.../projects/sinatra_project // ♥ > mkdir app/model
~/.../projects/sinatra_project // ♥ > mkdir app/views
~/.../projects/sinatra_project // ♥ > mkdir app/controllers
~/.../projects/sinatra_project // ♥ > mkdir config
~/.../projects/sinatra_project // ♥ > mkdir db
~/.../projects/sinatra_project // ♥ > touch config/env.rb
~/.../projects/sinatra_project // ♥ > touch Gemfile
~/.../projects/sinatra_project // ♥ > touch Rakefile
~/.../projects/sinatra_project // ♥ > touch app/controllers/application_controller.rb
~/.../projects/sinatra_project // ♥ > mkdir public
~/.../projects/sinatra_project // ♥ > bundle install