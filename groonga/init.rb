require File.expand_path("../../env", __FILE__)
require "yaml"
require "feedcellar"

resources = YAML.load_file("resources.yaml")

command = Feedcellar::Command.new

resources.each do |resource|
  puts "Registering #{resource}"
  command.register(resource)
end

puts "Collecting..."
command.collect
