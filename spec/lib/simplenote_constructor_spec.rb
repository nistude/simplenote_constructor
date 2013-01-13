require 'spec_helper'

describe SimplenoteConstructor do
  describe '.execute' do
    context 'when converting a single note to simplenote format' do
      it 'returns the plaintext formatted note' do
        Timecop.freeze(Time.parse('2013-01-13 12:00:00')) do
          formatted_note = File.read('spec/fixtures/formatted_note')

          expect(SimplenoteConstructor.execute(
            { file: 'spec/fixtures/notes/Real Options.txt' }
          )).to eq(formatted_note)
        end
      end
    end

    context 'when converting a direcoty of notes to simplenote format' do
      it 'returns the plaintext formatted notes' do
        Timecop.freeze(Time.parse('2013-01-13 15:00:00')) do
          formatted_notes = File.read('spec/fixtures/formatted_notes')

          expect(SimplenoteConstructor.execute(
            { directory: 'spec/fixtures/notes' }
          )).to eq(formatted_notes)
        end
      end
    end
  end
end
