# @Loads Example scripts stored in module
#
# This is pretty arguably a horrible way to manage this.
# It totally lacks flexability.
#
# @example
#   include manage_scripts
class manage_scripts(
  $file_array = undef
){
File {
  owner => 'root',
  group => 'root',
  mode  => '0755'
  }
file { $file_array:
  ensure => 'file',
  source => "puppet:///modules/manage_scripts/$file_array"
  }
}