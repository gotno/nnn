require "dry/web/container"
require "dry/system/components"

module Nnn
  class Container < Dry::Web::Container
    configure do
      config.name = :nnn
      config.listeners = true
      config.default_namespace = "nnn"
      config.auto_register = %w[lib/nnn]
    end

    load_paths! "lib"
  end
end
