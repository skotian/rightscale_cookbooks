maintainer       "RightScale, Inc."
maintainer_email "support@rightscale.com"
license          "Copyright RightScale, Inc. All rights reserved."
description      "Installs and configures ntp as a client or server"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "12.1.0"

supports "centos", "~> 5.8"
supports "redhat", "~> 5.8"
supports "ubuntu", "~> 10.04.0"

depends "rightscale"

recipe "sys_ntp", "Installs and configures ntp client."

%w{ ubuntu redhat centos }.each do |os|
  supports os
end

attribute "sys_ntp/servers",
  :display_name => "NTP Servers",
  :description => "A comma-separated list of fully qualified domain names for the array of servers that instances should talk to. Example: time1.example.com, time2.example.com, time3.example.com",
  :type => "string",
  :default => "time.rightscale.com, ec2-us-east.time.rightscale.com, ec2-us-west.time.rightscale.com"
