module TelegramMessage
  extend ActiveSupport::Concern
  require 'telegram/bot'

  TOKEN = Rails.application.secrets[:telegram][:bot][:token]

  BOT = Telegram::Bot::Client.new(TOKEN)
end