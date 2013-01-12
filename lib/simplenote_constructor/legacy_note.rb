require 'virtus'

class SimplenoteConstructor::LegacyNote
  include Virtus

  attribute :content, String
  attribute :tags, Array[String]
  attribute :timestamp, DateTime
  attribute :title, String
end
