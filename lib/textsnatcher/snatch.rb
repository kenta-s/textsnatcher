require 'nokogiri'
require 'open-uri'

module Textsnatcher
  class Snatch
    class << self
      def exec(url, xpath)
        html = Nokogiri::HTML.parse(open(url), nil, "UTF-8")
        html.xpath(xpath).text
      end
    end
  end
end
