require "bundler/setup"
require "dotenv/load"
require "roda"

class Nnn < Roda
  plugin :render

  route do |r|
    r.root do
      view "index"
    end
  end
end
