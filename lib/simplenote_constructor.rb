class SimplenoteConstructor
  def self.execute(options)
    simplenotes = ''
    if options[:file]
      note = LegacyNoteParser.parse(options[:file])
      simplenotes << PlainTextFormatter.format(note)
    elsif options[:directory]
      Dir.chdir(options[:directory])
      Dir.foreach('.') do |file|
        next if file == '.' || file == '..'
        note = LegacyNoteParser.parse(file)
        simplenotes << PlainTextFormatter.format(note)
      end
    end

    simplenotes
  end
end

require 'simplenote_constructor/ap_month_name'
require 'simplenote_constructor/date_time_formatter'
require 'simplenote_constructor/legacy_note'
require 'simplenote_constructor/legacy_note_parser'
require 'simplenote_constructor/plain_text_formatter'
