require 'spec_helper'

describe SimplenoteConstructor::APMonthName do
  describe '.abbreviate' do
    it 'returns the abbreviated month name' do
      expect(SimplenoteConstructor::APMonthName.abbreviate('January')).to eq('Jan.')
      expect(SimplenoteConstructor::APMonthName.abbreviate('February')).to eq('Feb.')
      expect(SimplenoteConstructor::APMonthName.abbreviate('March')).to eq('March')
      expect(SimplenoteConstructor::APMonthName.abbreviate('April')).to eq('April')
      expect(SimplenoteConstructor::APMonthName.abbreviate('May')).to eq('May')
      expect(SimplenoteConstructor::APMonthName.abbreviate('June')).to eq('June')
      expect(SimplenoteConstructor::APMonthName.abbreviate('July')).to eq('July')
      expect(SimplenoteConstructor::APMonthName.abbreviate('August')).to eq('Aug.')
      expect(SimplenoteConstructor::APMonthName.abbreviate('September')).to eq('Sept.')
      expect(SimplenoteConstructor::APMonthName.abbreviate('October')).to eq('Oct.')
      expect(SimplenoteConstructor::APMonthName.abbreviate('November')).to eq('Nov.')
      expect(SimplenoteConstructor::APMonthName.abbreviate('December')).to eq('Dec.')
    end
  end
end
