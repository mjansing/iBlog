require 'rails'
require 'mysql2'
require 'jquery-rails'
require 'kaminari'
require 'kaminari-i18n'
require 'rails-i18n'
require 'redcarpet'
require 'simple_form'
require 'sass-rails'
require 'bootstrap'
require 'uglifier'
require 'mini_racer'
require 'coffee-rails'
require 'acts-as-taggable-on'

module Iblog
  class Engine < ::Rails::Engine

    initializer 'load_migrations' do |app|
      # load migrations into host applications
      app.config.paths['db/migrate'].concat(Iblog::Engine.paths['db/migrate'].existent)
    end

  end
end
