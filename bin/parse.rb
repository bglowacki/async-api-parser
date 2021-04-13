#!/usr/bin/env ruby
require_relative "../lib/parser"
json = ARGV[0]
parser = Parser.new
parser.parse(json)
