class ConfirmLoserService
  attr_accessor :payload, :response_url, :message, :game_id

  def initialize(params)
    @payload = JSON.parse(params[:payload])
    @game_id = get_game_id
    @message = payload['original_message']
    @message['attachments'] = [{
      text: "Game confirmed. Better luck next time! Here's a potato :potato:",
      image_url: loser_gif,
      thumb_url: loser_gif,
      fallback: 'We are unable to confirm this game. Sorry!',
      color: '#3AA3E3',
      attachment_type: 'default'
    }]
  end

  def call
    confirm_game!
    send_response
  end

  private

  def confirm_game!
    game = Game.find(game_id)
    game.confirmed = true
    game.save
  end

  def get_game_id
    attachments = payload['original_message']['attachments']
    actions = attachments.first['actions']
    id = actions.first['value'].to_i
    id
  end

  def send_response
    url = URI.parse(payload['response_url'])
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    request = Net::HTTP::Post.new(url)
    request['content-type'] = 'application/json'
    request.body = JSON[message]
    response = http.request(request)
  end

  def loser_gif
    Giphy.random('loser').send(:hash)['images']['downsized']['url']
  end
end