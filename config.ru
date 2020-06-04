require 'config/env'
require 'require_all'

use Rack::MethodOverride
use WinesController
use UsersController
run ApplicationController

require_all 'app'