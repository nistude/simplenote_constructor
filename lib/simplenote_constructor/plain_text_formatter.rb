require 'erb'

class SimplenoteConstructor::PlainTextFormatter
  def self.format(note)
    timestamp = SimplenoteConstructor::DateTimeFormatter.timestamp(note.timestamp)

    note_template = %q{
      Note Created: <%= timestamp %>
      Note Updated: <%= timestamp %>
      Note Tags: <%= note.tags.join(',') %>
      Note Contents: <%= note.title %>
      <%= note.content %>
      ----
    }.gsub(/^\s*/, '')

    ERB.new(note_template).result(binding)
  end
end
