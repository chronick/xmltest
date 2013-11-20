#!/usr/bin/env ruby

require 'nokogiri'

def each_book(filename)
  File.open(filename, "r:UTF-8") do |file|
    Nokogiri::XML::Reader.from_io(file).each do |node|
      if node.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT and node.name == 'table_data'
        puts node.attribute('name')
        # if node.attribute('name') == 'users'
        #   yield(Nokogiri::XML(node.outer_xml).root)
        # end
      end
    end
  end
end

# each_book 'dump.xml' do |node|
#   puts node.attr('name')
# end

each_book 'nultest.xml' do |node|
  puts node.attr('name')
end

