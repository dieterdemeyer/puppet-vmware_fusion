# Public: Install VMware Fusion.
#         This does not include any license, and you must provide your own.
#         By installing VMware Fusion, you accept its Terms of Service.
#
# Usage:
#
#   include vmware_fusion
#   class { 'vmware_fusion':
#     version => '6.0.1'
#   }
#
class vmware_fusion($version='6.0.1') {

  case $version {
    '5.0.3': {
      $uuid = 'aiu8kpuymt6djf8'
    }
    '6.0.1': {
      $uuid = '6um01kj4tp0ku17'
    }
    default: {
      fail('Class[vmware_fusion]: parameter version not supported')
    }
  }

  package { "VMware-Fusion-${version}":
    provider => 'appdmg',
    source   => "https://dl.dropboxusercontent.com/s/${uuid}/VMware-Fusion-${version}.dmg",
  }

}
