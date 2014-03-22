module BootflatRails
  module Rails
    class Engine < ::Rails::Engine
      initializer "bootflat-rails.assets.precompile" do |app|
        app.config.assets.precompile << %r(bootflat/glyphicons-halflings-regular\.(?:eot|svg|ttf|woff)$)
      end
    end
  end
end