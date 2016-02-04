# config.ru
#
# Copyright (C) 2014-2016  Masafumi Yokoyama <myokoym@gmail.com>
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

base_dir = ENV["GROONGA_DATABASE_PATH"] || "groonga/database"

require "feedcellar/web"

ENV["FEEDCELLAR_HOME"] ||= File.join(base_dir, ".feedcellar")

FileUtils.mkdir_p(base_dir)
if ENV["FEEDCELLAR_ENABLE_CACHE"]
  require "racknga"
  require "racknga/middleware/cache"

  cache_database_path = File.join(base_dir, "var", "cache", "db")
  use Racknga::Middleware::Cache, :database_path => cache_database_path
end

run Feedcellar::Web::App
