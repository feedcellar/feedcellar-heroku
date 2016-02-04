require "feedcellar"

base_dir = File.join(File.dirname(__FILE__), "database")
ENV["FEEDCELLAR_HOME"] = File.join(base_dir, ".feedcellar")

command = Feedcellar::Command.new

command.import("registers.xml")
command.collect
