require 'spec_helper'
describe 'ruby::bundler', :type => :class do

  describe 'when called with no parameters' do
    it {
      should contain_package('bundler').with({
        'ensure'    => 'installed',
        'require'   => 'Package[ruby]',
        'provider'  => 'gem',
      })
    }
  end
end