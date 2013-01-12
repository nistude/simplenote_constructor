require 'spec_helper'

describe SimplenoteConstructor::DateTimeFormatter do
  describe '.timestamp' do
    let(:now) { Time.parse('2013-01-10 11:12:13') }

    it 'abbreviates month names according to AP style guide' do
      SimplenoteConstructor::APMonthName.should_receive(:abbreviate).with('January')

      SimplenoteConstructor::DateTimeFormatter.timestamp(now)
    end

    it 'returns a formatted timestamp' do
      expect(SimplenoteConstructor::DateTimeFormatter.timestamp(now)).to \
        eq('Jan. 10 2013 11:12:13')
    end
  end
end
