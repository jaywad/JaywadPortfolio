module TelegramMessage
  extend ActiveSupport::Concern
  require 'telegram/bot'

  TOKEN = ENV["TELEGRAM_TOKEN"]

  BOT = Telegram::Bot::Client.new(TOKEN)
end