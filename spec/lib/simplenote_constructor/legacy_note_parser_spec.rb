require 'spec_helper'

describe SimplenoteConstructor::LegacyNoteParser do
  describe '.parse' do
    let(:note) { SimplenoteConstructor::LegacyNoteParser.parse('foo') }

    it 'converts the filename to note title' do
      File.stub(read: '')
      note = SimplenoteConstructor::LegacyNoteParser.parse('foo/bar.txt')

      expect(note.title).to eq('bar')
    end

    it 'recognizes tags: #tagname' do
      File.stub(read: 'foo #bar baz #blub')

      expect(note.tags).to eq(['bar', 'blub'])
    end

    it 'strips tags from content' do
      File.stub(read: "foo #bar\n#blub baz\n#burp")

      expect(note.content).to eq("foo\nbaz\n")
    end
  end
end
