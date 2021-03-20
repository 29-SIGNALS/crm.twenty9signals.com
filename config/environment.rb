ENV['SINATRA_ENV'] ||= "development"
require 'bundler/setup'
require 'mysql2'
require 'dotenv'
Dotenv.load

Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.logger = Logger.new(STDOUT)

configure :development do
  ActiveRecord::Base.establish_connection(
    :adapter => "mysql2",
    :encoding => "utf8",
    :database => "dev_crm",
    :username => "root",
    :password => "Palo5non!"
  )
end

configure :production do
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'mysql://localhost/mydb')
end

require_all 'app'
