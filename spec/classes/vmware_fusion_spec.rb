require 'spec_helper'

describe 'vmware_fusion' do
  it do
    should contain_package("VMware-Fusion-6.0.1").with({
      :provider => 'appdmg',
      :source   => "https://dl.dropboxusercontent.com/s/6um01kj4tp0ku17/VMware-Fusion-6.0.1.dmg"
    })
  end
end

