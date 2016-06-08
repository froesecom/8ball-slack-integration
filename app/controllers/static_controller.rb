class StaticController < ApplicationController
  def index
    token = params[:token]
    input = params[:text]
    if token == Rails.application.secrets.slack_token
      
      if needs_help(input)
        render plain: "Ask a yes/no question, and I'll give you the answer."
      elsif input_looks_like_a_question(input)
        render plain: @answers.sample
      else
        render plain: "That's a pretty weird looking question."
      end
    end
  end

  private
  
  def needs_help(input)
    input.downcase =~ /^help$|^h$/
  end
  
  def input_looks_like_a_question(input)
    #do all the validations
    true
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
