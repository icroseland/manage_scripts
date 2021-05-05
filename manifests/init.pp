# @Loads Example scripts stored in module
#
# This is pretty arguably a horrible way to manage this.
# It totally lacks flexability.
#
# @example
#   include manage_scripts
class manage_scripts(
  $file_array
){
File {
  owner => 'root',
  group => 'root',
  mode  => '0755'
  }
notify {'running manage_scripts':}
$files_array.each |String $scripts|{
notify {"array value  ${scripts}  defined":}
}
#file { $scripts:
#  ensure => 'file',
#  source => "puppet:///modules/manage_scripts${scripts}"
#  }
# }
}
