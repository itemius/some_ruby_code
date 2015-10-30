
require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/Ruby'))
page.css('div#content div#bodyContent table.infobox tr th').each do |el|
   puts el.text
end
