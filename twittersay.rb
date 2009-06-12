require 'rubygems'
require 'twibot'
require 'daemonize'
 
class TwitterSay < Daemon::Base
 def self.start
   message do |message, params|
     `say #{message}`
   end
 end

 def self.stop
 end
end

TwitterSay.daemonize
