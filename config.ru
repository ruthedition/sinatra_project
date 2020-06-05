require_relative './config/env'
require 'require_all'

use Rack::MethodOverride
use WinesController
use SessionsController
use UsersController
run ApplicationController

require_all 'app'