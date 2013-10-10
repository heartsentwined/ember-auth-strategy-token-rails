require 'rails'
require 'ember/auth/strategy/token/source'
require 'ember/auth/strategy/token/rails/version'
require 'ember/auth/strategy/token/rails/engine'

module Ember
  module Auth
    module Strategy
      module Token
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.strategy.token.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Strategy::Token::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
