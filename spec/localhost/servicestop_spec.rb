require 'rubygems'
require 'spec_helper'

describe selinux, :if => os[:family] == 'redhat' do
    it { should be_disabled }
end

describe service('iptables'), :if => os[:family] == 'redhat' do
  it { should_not be_enabled }
  it { should_not be_running }
end

describe service('ip6tables'), :if => os[:family] == 'redhat' do
  it { should_not be_enabled }
  it { should_not be_running }
end
