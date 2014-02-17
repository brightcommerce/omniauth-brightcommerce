# encoding: utf-8
# Copyright 2014 Brightcommerce, Inc.

require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Brightcommerce < OmniAuth::Strategies::OAuth2
      
      option :name, :brightcommerce
      option :client_options, { site: 'http://localhost:3000', authorize_path: '/oauth2/authorize' }

      uid do
        raw_info['id']
      end

      info do
        { 
          name: raw_info['name'], 
          email_address: raw_info['email_address'] 
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/profile').parsed
      end
      
    end
  end
end
