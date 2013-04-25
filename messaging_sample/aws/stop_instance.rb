require 'rubygems'
require 'torquebox-messaging'

module AWS

class StopInstance
  	def initialize(options = {})
		@queue = TorqueBox::Messaging::Queue.new('/queues/vms_to_stop')
  	end

  	def run
	  push_message
	  check_queue
	  receive_messages
  	end

  	def push_message
	  @queue.publish "id fake"
	  puts 'message pushed!!!'
  	end

  	def check_queue
  	  puts "VMs to stop #{@queue.count_messages}"
  	end

  	def receive_messages
  		puts "processing message ..."
  		message = @queue.receive
  		puts "Instance #{message} stoped"
  	end

  end
end