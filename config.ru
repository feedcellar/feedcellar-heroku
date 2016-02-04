require "./env"
require "feedcellar/web"

if ENV["FEEDCELLAR_ENABLE_CACHE"]
  require "racknga"
  require "racknga/middleware/cache"

  base_dir = ENV["FEEDCELLAR_HOME"]
  cache_database_path = File.join(base_dir, "var", "cache", "db")
  use Racknga::Middleware::Cache, :database_path => cache_database_path
end

run Feedcellar::Web::App
