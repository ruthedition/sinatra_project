$LOAD_PATH.unshift '.'
require 'config/env'
require 'require_all'

use Rack::MethodOverride
use WinesController
use SessionsController
run ApplicationController

require_all 'app'