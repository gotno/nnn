require "nnn/main/view/controller"

module Nnn
  module Main
    module Views
      class Welcome < View::Controller
        configure do |config|
          config.template = "welcome"
        end
      end
    end
  end
end
