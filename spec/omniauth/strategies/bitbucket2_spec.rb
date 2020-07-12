# frozen_string_literal: true

require 'spec_helper'

describe OmniAuth::Strategies::Bitbucket do
  let(:access_token) { double('AccessToken', options: {}) }
  let(:parsed_response) { double('ParsedResponse') }
  let(:response) { double('Response', parsed: parsed_response) }

  subject do
    OmniAuth::Strategies::Bitbucket.new({})
  end

  before(:each) do
    allow(subject).to receive(:access_token).and_return(access_token)
  end

  context 'client options' do
    it 'has the correct site' do
      expect(subject.options.client_options.site).to eq('https://api.bitbucket.org/2.0')
    end

    it 'has the correct authorize url' do
      expect(subject.options.client_options.authorize_url).to eq('https://bitbucket.org/site/oauth2/authorize')
    end

    it 'has the correct token url' do
      expect(subject.options.client_options.token_url).to eq('https://bitbucket.org/site/oauth2/access_token')
    end

    it 'has the correct callback path' do
      expect(subject.callback_path).to eq('/auth/bitbucket/callback')
    end
  end
end
