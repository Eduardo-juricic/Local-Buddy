class MatchChannel < ApplicationCable::Channel
  def subscribed
    stream_from "match_#{params[:match_id]}_messages"
  end

  def unsubscribed
  end
end
