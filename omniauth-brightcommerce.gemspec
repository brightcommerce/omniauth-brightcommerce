# encoding: utf-8
# Copyright 2014 Brightcommerce, Inc.

$:.push File.expand_path('../lib', __FILE__)
require 'omni_auth/brightcommerce/version'

Gem::Specification.new do |gem|
  gem.name         = 'omniauth-brightcommerce'
  gem.version      = OmniAuth::Brightcommerce::VERSION::STRING
  gem.authors      = 'Dom Jocubeit'
  gem.email        = 'support@brightcommerce.com'
  gem.homepage     = 'https://github.com/brightcommerce/omniauth-brightcommerce'
  gem.summary      = 'OmniAuth Oauth2 strategy for Brightcommerce applications.'
  gem.description  = 'OmniAuth Oauth2 strategy for Brightcommerce applications.'  
  gem.files        = `git ls-files`.split("\n")
  gem.executables  = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_path = 'lib'

  gem.add_runtime_dependency 'omniauth', '~> 1.0'
  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.0'
end
