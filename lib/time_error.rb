require "date"
require "json"
require "net/http"

class TimeError
  def initialize(requester, comp_time)
    @requester = requester
    @comp_time = comp_time
  end

  # Returns difference in seconds between server time
  # and the time on this computer
  def error
    return get_server_time - @comp_time
  end

  private

  def get_server_time
    text_response = @requester.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end