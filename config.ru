require 'config/environment'
require 'require_all'

use Rack::MethodOverride
use WinesController
use UsersController
run ApplicationController
