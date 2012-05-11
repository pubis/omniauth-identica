require 'spec_helper'

describe OmniAuth::Strategies::Identica do
  subject do
    OmniAuth::Strategies::Identica.new({})
  end

  context "client options" do
    it 'should have correct name' do
      subject.options.name.should eq("identica")
    end

    it 'should have correct site' do
      subject.options.client_options.site.should eq('http://identi.ca')
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_path.should eq('/api/oauth/authorize')
    end
  end
end
