# frozen_string_literal: true

require 'spec_helper'

describe 'ccs_database' do
  let(:facts) do
    {
      mountpoints: {},
      # need by puppetlabs/mysql
      osfamily: 'RedHat',
      operatingsystem: 'Centos',
      operatingsystemmajrelease: 7,
    }
  end

  describe 'without database parameter' do
    let(:params) do
      {
        password: 'foo', # required to prevent lookup of 'ccs_dbarchive'
      }
    end

    it { is_expected.to compile.with_all_deps }
    it { is_expected.to contain_class('mysql::server') }
    it { is_expected.to have_mysql__db_resource_count(0) }
  end

  describe 'with database & password parameters' do
    let(:params) do
      {
        database: 'bar',
        password: 'foo', # required to prevent lookup of 'ccs_dbarchive'
      }
    end

    it { is_expected.to compile.with_all_deps }
    it { is_expected.to contain_class('mysql::server') }
    it { is_expected.to have_mysql__db_resource_count(1) }
    it { is_expected.to contain_mysql__db('bar') }
  end
end
