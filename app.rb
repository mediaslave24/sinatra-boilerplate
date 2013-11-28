require "rubygems"
require "bundler"

Bundler.require(:default, ENV["RACK_ENV"])

class Application < Sinatra::Base
  set :assets_js_compressor, :closure
  register Sinatra::AssetPipeline

  configure do
    register Sinatra::ActiveRecordExtension
    set :database, "sqlite3:///db.sqlite3"
  end

  get "/" do
    "Ready to code?"
  end
end
