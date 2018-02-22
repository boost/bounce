# Slack.configure do |config|
#   config.token = ENV['SLACK_API_TOKEN_APP']
# end

Slack.configure do |config|
  config.token = ENV['SLACK_BOT_TOKEN']
end