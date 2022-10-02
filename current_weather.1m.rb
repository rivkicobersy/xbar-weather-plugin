#!/usr/bin/env /Users/rivkicobersy/.rbenv/shims/ruby
# <xbar.var>string(WEATHER_API_KEY=""): OpenWeather api key</xbar.var>
require "http"

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=johannesburg&appid=#{ENV["WEATHER_API_KEY"]}&units=imperial")
weather_data = response.parse
temp = (weather_data["main"]["temp"] - 32) * 0.56
celcius = temp.round(2)

if celcius < 15
  puts celcius.to_s + " ˚C" + " 🥶"
elsif celcius > 16
  puts celcius.to_s + " ˚C" + " 🥵"
end
