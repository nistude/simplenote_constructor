require 'spec_helper'

describe SimplenoteConstructor::PlainTextFormatter do
  describe '.format' do
    let(:note) do
      SimplenoteConstructor::LegacyNote.new(content: "foo\nbar\nbaz",
                                            tags: ['one', 'two', 'three'],
                                            timestamp: Time.now,
                                            title: 'title')
    end
    let(:formatted_note) { SimplenoteConstructor::PlainTextFormatter.format(note) }

    context 'header' do
      it 'converts the note`s timestamp to simplenote format' do
        SimplenoteConstructor::DateTimeFormatter.should_receive(:timestamp).with(note.timestamp)

        formatted_note
      end

      it 'prints a `created` timestamp' do
        SimplenoteConstructor::DateTimeFormatter.stub(timestamp: 'timestamp')

        expect(formatted_note).to match(/^Note Created: timestamp$/)
      end

      it 'prints an `updated` timestamp' do
        SimplenoteConstructor::DateTimeFormatter.stub(timestamp: 'timestamp')

        expect(formatted_note).to match(/^Note Updated: timestamp$/)
      end

      it 'prints the list of tags' do
        expect(formatted_note).to match(/^Note Tags: one,two,three$/)
      end

      it 'prints the note`s title' do
        expect(formatted_note).to match(/^Note Contents: title$/)
      end
    end

    context 'body' do
      it 'prints the note`s content' do
        expect(formatted_note).to match(/^#{note.content}$/)
      end
    end

    context 'footer' do
      it 'prints a note delimiter' do
        expect(formatted_note).to match(/^----$/)
      end
    end
  end
end
