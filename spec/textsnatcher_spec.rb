require 'spec_helper'

describe Textsnatcher do
  it 'has a version number' do
    expect(Textsnatcher::VERSION).not_to be nil
  end

  describe 'Textsnatcher::Snatch.exec' do
    context 'xpath: /html/body/div/h1' do
      it 'returns "Example Domain"' do
        url  = 'http://example.com/'
        xpath = '/html/body/div/h1'
        expect(Textsnatcher::Snatch.exec(url, xpath)).to eq("Example Domain")
      end
    end
    context 'xpath: /html/body/div/p[2]/a' do
      it 'returns "More information..."' do
        url  = 'http://example.com/'
        xpath = '/html/body/div/p[2]/a'
        expect(Textsnatcher::Snatch.exec(url, xpath)).to eq("More information...")
      end
    end
  end
end
