require "rubygems"

$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__))) unless $LOAD_PATH.include?(File.expand_path(File.dirname(__FILE__)))

module Webrat
  # The common base class for all exceptions raised by Webrat.
  class WebratError < StandardError
  end

  VERSION = '0.4.4'

  def self.require_xml
    gem "nokogiri", ">= 1.0.6"

    require "nokogiri"
    require "webrat/core/xml/nokogiri"
  end

end

Webrat.require_xml

require "webrat/core"
