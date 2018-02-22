OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :slack, ENV['SLACK_KEY'], ENV['SLACK_SECRET'],
           # scope: 'team:read,users:read,identify,bot,incoming-webhook,commands,chat:write:user,chat:write:bot', team: 'boostnz'
  provider :slack, ENV['SLACK_KEY'], ENV['SLACK_SECRET'], scope: 'identity.basic', name: :sign_in_with_slack, team: 'boostnz'
  provider :slack, ENV['SLACK_KEY'], ENV['SLACK_SECRET'], scope: 'identify,bot'
end
