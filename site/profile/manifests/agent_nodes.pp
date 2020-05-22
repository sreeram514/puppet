class profile::agent_nodes{
  include docker
  docker::image { 'centos':
    image_tag => '7'
  }
  docker::run {'http-server':
    image => 'centos:7',
    command => '/bin/sh -c "while true; do sleep 1000; done"', 
   }
}
