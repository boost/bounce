OmniAuth.config.test_mode = true
OmniAuth.config.mock_auth[:slack] = OmniAuth::AuthHash.new(
  provider: 'slack',
  uid: '12345',
  info: {
    nickname: 'ben',
    first_name: 'Ben',
    last_name: 'Boost',
    image: 'http://image.jpg'
  }
)
