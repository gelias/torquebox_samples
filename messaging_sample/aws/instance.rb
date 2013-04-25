require 'rubygems'
require 'torquebox-messaging'

module AWS

  class Instance
  	def initialize(options = {})
		@queue = TorqueBox::Messaging::Queue.new('/queues/vms_to_start')
  	end

  	def run
	  push_message
	  check_queue
  	end

  	def push_message
	  #queue = inject('/queues/vms_to_start')
	  #queue = TorqueBox::Messaging::Queue.new('/queues/vms_to_start')
	  #queue = TorqueBox.fetch('/queues/vms_to_start')
	  @queue.publish "id fake"
	  puts 'message pushed!!!'
  	end

  	def check_queue
  	  puts "VMs to start #{@queue.count_messages}"
  	end

  end
end