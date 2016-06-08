class StaticController < ApplicationController
  def index
    token = params[:token]
    if token == Rails.application.secrets.slack_token
      # do all the rad stuff
    end
  
    render plain: "This is how you render text to slack me thinks"
  end
end

# Incoming params
# token=gIkuvaNzQIHg97ATvDxqgjtO
# team_id=T0001
# team_domain=example
# channel_id=C2147483705
# channel_name=test
# user_id=U2147483697
# user_name=Steve
# command=/weather
# text=94070
# response_url=https://hooks.slack.com/commands/1234/5678
