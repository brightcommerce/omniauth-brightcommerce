# OmniAuth::Brightcommerce
Brightcommerce OAuth2 Strategy for OmniAuth 1.0.

Read Brightcommerce OAuth2 docs for more details: http://brightcommerce.com/docs/oauth2

## Installation
Add to your `Gemfile`:

    gem 'omniauth-brightcommerce'

Then `bundle install`.

Or install it yourself as:

    $ gem install omniauth-brightcommerce

## Dependencies
* OmniAuth v1.0 or higher
* OmniAuth Oauth2 v1.0 or higher

## Usage
`OmniAuth::Strategies::Brightcommerce` is simply a Rack middleware. Read the OmniAuth 1.0 docs for detailed instructions: https://github.com/intridea/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :brightcommerce, ENV['BRIGHTCOMMERCE_APIKEY'], ENV['BRIGHTCOMMERCE_SECRET']
    end

## Authentication Hash
Here's an example *Authentication Hash* available in `request.env['omniauth.auth']`:

    {
      :provider => 'brightcommerce',
      :uid => '1234567890',
      :info => {
        :nickname => 'meetdom',
        :name => 'Dom',
        :location => 'New York, NY',
        :image => '',
        :description => 'hello@meetdom.com',
        :urls => { 
          :blog => 'http://meetdom.com'
        }
      },
      :credentials => {
        :token => '2.00JjgzmBd7F...', # OAuth 2.0 access_token, which you may wish to store
        :expires_at => 1331780640, # when the access token expires (if it expires)
        :expires => true # if you request `offline_access` this will be false
      },
      :extra => {
        :raw_info => {
          ... # data from /2/users/show.json, check by yourself
        }
      }
    }

## Copyright
Copyright 2014 Brightcommerce, Inc.
