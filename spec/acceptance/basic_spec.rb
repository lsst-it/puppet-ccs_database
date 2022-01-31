# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'ccs_database class' do
  let(:pp) do
    <<-PP
    class{ 'ccs_database':
      database => 'foo',
      password => 'bar',
    }
    PP
  end

  it_behaves_like 'an idempotent resource'
end
