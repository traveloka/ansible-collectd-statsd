describe file('/etc/collectd/collectd.conf.d/statsd.conf') do
  it { should be_exist }
  its('owner') { should eq 'root' }
  its('group') { should eq 'root' }
  its('mode') { should cmp '0644' }
  its('content') { should include '8125' }
  its('content') { should include 'DeleteSets      true' }
  its('content') { should include 'DeleteCounters  true' }
  its('content') { should include 'DeleteGauges    true' }
  its('content') { should include 'TimerLower      true' }
  its('content') { should include 'TimerUpper      true' }
  its('content') { should include 'TimerCount      true' }
  its('content') { should include 'TimerPercentile 90.0' }
end

describe service('collectd') do
  it { should be_enabled }
  it { should be_running }
end