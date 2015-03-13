require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module T
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.generators do |g|
        g.test_framework = "rspec"
        g.controller_specs = false
        g.helper_specs = false
        g.view_specs = false
        g.assets = false
        g.helper = false
    end
    config.time_zone = 'Tokyo'
    config.encoding = "utf-8"
    config.i18n.default_locale = :ja
    config.i18n.enforce_available_locales = true
  end
end
