TorqueBox.configure do

  queue '/queues/vms_to_start'
  queue '/queues/vms_to_stop'

  job AWS::Instance do
    name 'aws.instance'
    cron '*/2 * * * * ?'
    timeout '5s'
    description 'Process aws instance requests' 
  end
  
end