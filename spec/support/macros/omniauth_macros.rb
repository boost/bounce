module OmniauthMacros
  def sign_in
    visit root_path
    expect(page).to have_link 'Sign in using Slack'
    find(:css, '#sign-in-link').click
    expect(page).to have_link 'Sign out'
  end

  def sign_out
    visit root_path
    find(:css, '#sign-out-link').click
    expect(page).to have_link 'Sign in using Slack'
  end
end

RSpec.configure do |config|
  config.include OmniauthMacros
end
