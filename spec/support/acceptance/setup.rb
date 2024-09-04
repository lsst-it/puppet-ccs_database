# frozen_string_literal: true

configure_beaker do |host|
  # Following are owned by lsst/ccs_software
  on host, 'mkdir -p /etc/ccs'
  on host, 'useradd ccs'
  on host, 'groupadd ccsadm'
end
