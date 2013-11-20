#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

require 'big_xml'

thought_count = 0
BigXML.grep(input: 'dump.xml', paths: ['/table_data[name="thoughts"]/row'] ) do |path, xml| 
  thought_count += 1
end

puts thought_count