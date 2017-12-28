require "pathname"
require "dry/web/container"
require "dry/system/components"

module Nnn
  module Main
    class Container < Dry::Web::Container
      require root.join("system/nnn/container")
      import core: Nnn::Container

      configure do |config|
        config.root = Pathname(__FILE__).join("../../..").realpath.dirname.freeze
        config.logger = Nnn::Container[:logger]
        config.default_namespace = "nnn.main"
        config.auto_register = %w[lib/nnn/main]
      end

      load_paths! "lib"
    end
  end
end
