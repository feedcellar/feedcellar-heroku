require File.expand_path("../../env", __FILE__)
require "feedcellar"

command = Feedcellar::Command.new

command.import("registers.xml")
command.collect
