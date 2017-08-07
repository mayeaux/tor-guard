#!/usr/bin/env ruby

# require 'tor-guard'
require_relative '../lib/tor-guard'

if ARGV.empty?
  puts 'Usage: tg [ip-address]'
  exit 1
else
  puts TorGuard.exit_node?(ARGV.first)
end
