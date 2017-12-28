# auto_register: false

require "rom-repository"
require "nnn/container"
require "nnn/import"

module Nnn
  class Repository < ROM::Repository::Root
    include Import.args["persistence.rom"]
  end
end
