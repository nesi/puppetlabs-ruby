# Class: ruby::bundler
#
# This class installs the Ruby bundler to manage application dependencies,
# pretty much all it does is set up bundler _after_ ruby
#
# Parameters:
#
#  ensure: (default 'installed')
#  Passed to the bundler package to allow for uninstallation, or to specify
#  the version to install.
#
#  provider: (default 'gem')
#  Set to change provider for installing the package. Currently only testing
#  installation via the `gem` provider, but should work if set to 'package'
#  for Linux distributions that have them (e.g. Debian), and for use of rvm
#  if it's ever available as a package provider.
#
# Actions:
#   - Install bundler
#
# Requires:
#   ruby
#
# Sample Usage:
#
# For a standard install using the latest Rubygems provided by rubygems-update on Redhat
#   use:
#
#     include ruby::bundler
#
#   To install a specific version of bundler use:
#
#     class { 'ruby::bundler':
#       ensure         => '1.1.4',
#     }
#
class ruby::bundler(
  $ensure   = 'installed',
  $provider = 'gem'
){

  package{'bundler':
    ensure    => $ensure,
    provider  => $provider,
    require   => Class['ruby'],
  }

}