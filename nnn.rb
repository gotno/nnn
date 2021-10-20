require "bundler/setup"
require "roda"

class Nnn < Roda
  route do |r|
    r.root do
      "<h1>violence.</h1>"
    end
  end
end
