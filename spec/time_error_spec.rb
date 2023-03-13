require "time_error"
require "date"
require "json"
require "net/http"

RSpec.describe TimeError do
    it "Returns difference in seconds between server time and the time on this computer" do
        requester_dbl = double :requester
        comp_time_dbl = DateTime.parse("2023-03-13T14:14:53.053758+00:00").to_time
        allow(requester_dbl).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"2.26.48.204","datetime":"2023-03-13T14:14:53.053758+00:00","day_of_week":1,"day_of_year":72,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1678716893,"utc_datetime":"2023-03-13T14:14:53.053758+00:00","utc_offset":"+00:00","week_number":11}')
        time_error = TimeError.new(requester_dbl)
        expect(time_error.error(comp_time_dbl)).to eq 0.0
        comp_time_dbl = DateTime.parse("2023-03-13T14:14:53.052758+00:00").to_time
        time_error = TimeError.new(requester_dbl)
        expect(time_error.error(comp_time_dbl)).to eq 0.001
    end
end