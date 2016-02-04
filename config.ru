base_dir = File.join(File.dirname(__FILE__), "groonga", "database")
ENV["FEEDCELLAR_HOME"] = File.join(base_dir, ".feedcellar")

require "feedcellar/web"

FileUtils.mkdir_p(base_dir)
if ENV["FEEDCELLAR_ENABLE_CACHE"]
  require "racknga"
  require "racknga/middleware/cache"

  cache_database_path = File.join(base_dir, "var", "cache", "db")
  use Racknga::Middleware::Cache, :database_path => cache_database_path
end

run Feedcellar::Web::App
