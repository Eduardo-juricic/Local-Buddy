class MatchChannel < ApplicationCable::Channel
  def subscribed
    stream_for match
  end

  def unsubscribed
  end

  private

  def match
    @match ||= Match.find(params[:id]) 
  end
end
