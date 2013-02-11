class Site < ActiveRecord::Base
  attr_accessible :name, :url

	def nokogiri_doc( _search)
		url_string = url.gsub('search_text', _search)
		@nokogiri_doc ||= Nokogiri::HTML(open(url_string))
	end

end
