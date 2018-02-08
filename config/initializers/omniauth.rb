OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :slack, ENV['SLACK_KEY'], ENV['SLACK_SECRET'],
           scope: 'team:read,users:read,identify,bot', team: 'boostnz'
end
