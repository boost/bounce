class SlackController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def receive
   response = ConfirmLoserService.new(params).call
  end
end
