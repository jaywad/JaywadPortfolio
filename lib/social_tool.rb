module SocialTool
  def self.twitter_search
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV.fetch("CONSUMER_KEY_API_KEY")
      config.consumer_secret     = ENV.fetch("CONSUMER_SECRET_API_SECRET")
      config.access_token        = ENV.fetch("ACCESS_TOKEN")
      config.access_token_secret = ENV.fetch("ACCESS_TOKEN_SECRET")
    end

    client.search("#rails", result_type: "recent").take(8).collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.text}"
    end
  end
end