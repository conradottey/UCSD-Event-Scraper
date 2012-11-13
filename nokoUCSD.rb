require 'rubygems'
require 'nokogiri'
require 'open-uri'

#url = "http://polisci.ucsd.edu/faculty/popkin.html"
url = "http://calendar.ucsd.edu/SearchResult.asp?ResultType=ONEDAY&DatePick=11/14/2012"
doc = Nokogiri::HTML(open(url))


puts doc.at_css("title").text
#puts doc.at_css("h1").text
#puts doc.at_css("h2").text
#puts doc.at_css("#tdr_3_col_content").text
puts doc.css(".pad-30px-left").text

  