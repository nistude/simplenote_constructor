class SimplenoteConstructor::APMonthName
  # http://suite101.com/article/the-ap-style-guide-to-abbreviations-a98761
  def self.abbreviate(name)
    abbreviations[name] || name
  end

  class << self
    private
    def abbreviations
      {
        'January' => 'Jan.',
        'February' => 'Feb.',
        'August' => 'Aug.',
        'September' => 'Sept.',
        'October' => 'Oct.',
        'November' => 'Nov.',
        'December' => 'Dec.'
      }
    end
  end
end
