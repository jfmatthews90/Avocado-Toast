class PostChannel < ApplicationCable::Channel
  def subscribed
    stream_from "post_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def listen (data)
  	stop_all_streams
  	stream_for data["post_id"]
  end  
end
