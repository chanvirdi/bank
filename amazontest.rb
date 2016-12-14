#!/usr/bin/ruby -w
#amazon-book-search.rb
require 'amazon/search'

if ARGV.size != 2
	puts "Usage: #{$0}[Amazon Web Services Acceskey ID] [text to search for]"
	exit
end

access_key, search_request = ARGV
req = Amazon::Search::Request.new(access_key);
req.keyword_search(search_request,'books',Amazon::Search::LIGHT) do |book|
	puts %{"#{book.product_name}" by #{book.authors.join(', ')}}
end