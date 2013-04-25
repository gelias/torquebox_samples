TorqueBox.configure do

  queue '/queues/vms_to_start'
  queue '/queues/vms_to_stop'

  job AWS::StartInstance do
    name 'aws.start_instance'
    cron '*/2 * * * * ?'
    timeout '5s'
    description 'Process aws start instance requests' 
  end

  job AWS::StopInstance do
    name 'aws.stop_instance'
    cron '*/2 * * * * ?'
    timeout '5s'
    description 'Process aws stop instance requests' 
  end
  
end