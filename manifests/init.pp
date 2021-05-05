# @Loads Example scripts stored in module
#
# This is pretty arguably a horrible way to manage this.
# It totally lacks flexability.
#
# @example
#   include manage_scripts
class manage_scripts(
  Array $file_array
){
File {
  owner => 'root',
  group => 'root',
  mode  => '0755'
  }

$file_array.each |String $scripts|{
file { $scripts:
  ensure => 'file',
  source => "puppet:///modules/manage_scripts${scripts}"
  }
 }
}
