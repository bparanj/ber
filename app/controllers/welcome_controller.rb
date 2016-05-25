require 'ticker/sse'

class WelcomeController < ApplicationController
  include ActionController::Live
  
  def index
  end
  
  def ticker
    response.headers['Content-Type'] = 'text/event-stream'
    sse = Ticker::SSE.new(response.stream)
    begin
      loop do
        quotes = [410, 411, 415, 413, 414, 420]
        sse.write({ SRV:  quotes.sample})
        sleep 2
      end
    rescue IOError
      logger.info 'Client disconnects causes IOError on write'
    ensure
      sse.close
    end
  end
end
