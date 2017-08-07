#!/usr/bin/env ruby

require 'tor-guard'

if ARGV.empty?
  puts 'Usage: tg [ip-address]'
  exit 1
end

puts TorGuard.exit_node?(ARGV.first)
