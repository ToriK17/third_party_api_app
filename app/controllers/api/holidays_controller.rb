class Api::HolidaysController < ApplicationController
  def index
    @holidays = HTTP.get("https://holidayapi.com/v1/countries?key=API_KEY").parse["countries"]
    render "index.json.jb"
  end
end
