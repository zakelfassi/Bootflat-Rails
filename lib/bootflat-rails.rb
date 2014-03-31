module BootflatRails
  class << self
    def load!
     require 'bootstrap-sass'

      if rails?
        require 'sass-rails'
        register_rails_engine
      end

      configure_sass
    end

    # Paths
    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def javascripts_path
      File.join assets_path, 'javascripts'
    end

    def images_path
      File.join assets_path, 'images'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'vendor', 'assets'
    end

    # Environment detection helpers
    def asset_pipeline?
      defined?(::Sprockets)
    end

    def rails?
      defined?(::Rails)
    end

    private

    def configure_sass
      ::Sass.load_paths << stylesheets_path

      # bootstrap requires minimum precision of 10, see https://github.com/twbs/bootflat-rails/issues/409
      ::Sass::Script::Number.precision = [10, ::Sass::Script::Number.precision].max
    end

    def register_rails_engine
      require 'bootflat-rails/engine'
    end
  end
end

BootflatRails.load!
