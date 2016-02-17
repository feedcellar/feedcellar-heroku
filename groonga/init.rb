require File.expand_path("../../env", __FILE__)
require "yaml"
require "feedcellar"

resources = YAML.load_file("resources.yaml")
puts "Resources: #{resources}"

command = Feedcellar::Command.new

puts "Registering..."
command.register(*resources)

puts "Collecting..."
command.collect
