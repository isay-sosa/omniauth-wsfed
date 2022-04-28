require 'omniauth-wsfed'
require 'rack/test'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

# Ignore authentication token request
OmniAuth.config.request_validation_phase = proc {}

# Loads WSFed WResult XML files located in the spec/support directory...
def load_support_xml(filename)
  filename = File.expand_path(File.join('..', 'support', "#{filename.to_s}.xml"), __FILE__)
  IO.read(filename)
end
