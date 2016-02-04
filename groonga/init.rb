require "feedcellar"

base_dir = File.join(File.dirname(__FILE__), "database", ".feedcellar")
FileUtils.mkdir_p(base_dir)
ENV["FEEDCELLAR_HOME"] = base_dir

command = Feedcellar::Command.new

command.import("registers.xml")
command.collect
