# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'ccs_database class' do
  let(:manifest) do
    <<-PP
    class{ 'ccs_database':
      database => 'foo',
      password => Sensitive('bar'),
    }
    PP
  end

  it_behaves_like 'an idempotent resource'
end
