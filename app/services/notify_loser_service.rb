class NotifyLoserService
  attr_accessor :game, :client

  def initialize(game)
    @game = game
    @client = Slack::Web::Client.new
  end

  def call
    winners = player_names(game.winner)
    losers = player_names(game.loser)

    attachments = [{
      text: 'Is this true?',
      callback_id: 'game_confirmation',
      fallback: 'Something is not right here.',
      attachment_type: 'default',
      color: '#3AA3E3',
      actions: [{
        name: 'confirmation',
        text: 'Yes',
        type: 'button',
        value: game.id
      }]
    }]

    options = {
      channel: "##{ENV['SLACK_CHANNEL']}",
      as_user: true,
      text: "#{losers}, team #{winners} said they beat you at Ping Pong!",
      attachments: attachments.to_json
    }

    client.chat_postMessage(options)
  end

  private

  def player_names(team)
    team.players.map(&:nickname).map { |nickname| "<@#{nickname}>" }.join(' and ')
  end
end