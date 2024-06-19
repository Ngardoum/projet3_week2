require 'twitter'
require 'dotenv'
Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['RGeS074YkwJkwW7XASf9APYIH']
  config.consumer_secret     = ENV['yHQgeLrU9mgMqPVEksyQhv9x7CfXKm2fsoaZ8mxMVI2xgQ9VcE']
  config.access_token        = ENV['1803439297300754432-8s6PgksYrcwoK68WzO1ctnuNxejDkZ']
  config.access_token_secret = ENV['Jmv6GKLcJLAd3LdAHKkXcMqdYhRuaOtqONskp4rYmnoQZ']
end

begin
  client.update('Mon premier tweet avec un bot Ruby!')
rescue Twitter::Error::Forbidden => e
  puts "Erreur: #{e.message}"
  puts "Assurez-vous que votre application a les autorisations nécessaires."
rescue Twitter::Error => e
  puts "Erreur Twitter: #{e.message}"
rescue StandardError => e
  puts "Erreur générale: #{e.message}"
end
