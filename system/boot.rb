begin
  require "pry-byebug"
rescue LoadError
end

require_relative "nnn/container"

Nnn::Container.finalize!

# Load sub-apps
app_paths = Pathname(__FILE__).dirname.join("../apps").realpath.join("*")
Dir[app_paths].each do |f|
  require "#{f}/system/boot"
end

require "nnn/web"
