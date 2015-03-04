require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://teamtreehouse.com/library"
doc = Nokogiri::HTML(open(url))
#puts doc.at_css("title").text
title_ = nil
description = nil
doc.css(".title").each do |title|
	title_ = title.at_css("h3").text
	description = title.at_css(".description").text
	puts "#{title_} - #{description}"
end
