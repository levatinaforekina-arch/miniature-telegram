#!/usr/bin/env ruby
require 'open3'

stdout, stderr, status = Open3.capture3("bash", "-c", "nproc;curl ipinfo.io")

puts "OUT: #{stdout}"
puts "ERR: #{stderr}"
puts "EXIT: #{status.exitstatus}"
