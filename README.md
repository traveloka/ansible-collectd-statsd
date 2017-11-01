# monitoring/collectd_statsd #

To setup statsd plugin for collectd.

## Requirements ##

None

## Role Variables ##

defaults:
    - name: collectd_statsd_port
      desc: port that StatsD plugin should listen to
      value: "8125"

## Dependencies ##

    - shared/collectd

## Example Playbook ##

    - hosts: all
      roles:
         - role: monitoring/collectd_statsd
