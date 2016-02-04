require "feedcellar"

base_dir = ENV["GROONGA_DATABASE_PATH"] || "groonga/database"
ENV["FEEDCELLAR_HOME"] ||= File.join(base_dir, ".feedcellar")

command = Feedcellar::Command.new

command.import("registers.xml")
command.collect
