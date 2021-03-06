# This file is used by Rack-based servers to start the application.
require 'rubygems'
require 'bundler'

Bundler.require

use Rack::Cors do
  allow do
    origins '*'
    resource '/*', :headers => :any, :methods => [:get, :post, :put, :delete, :patch, :options, :head]
  end
end

class Cors
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)

    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, PATCH, DELETE, HEAD, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'

    [status, headers, response]
  end
end

use Cors

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application
