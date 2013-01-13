class SimplenoteConstructor::LegacyNoteParser
  def self.parse(filename)
    file = File.read(filename)

    SimplenoteConstructor::LegacyNote.new(
      content: file.gsub(/ *#\w+ */, ''),
      tags: file.scan(/#(\w+)/).flatten,
      timestamp: Time.now,
      title: File.basename(filename, '.txt').strip
    )
  end
end
