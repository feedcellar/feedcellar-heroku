require "feedcellar"

base_dir = File.join(File.dirname(__FILE__), "..", ".feedcellar")

ENV["FEEDCELLAR_HOME"] = base_dir

command = Feedcellar::Command.new

command.import("registers.xml")
command.collect
