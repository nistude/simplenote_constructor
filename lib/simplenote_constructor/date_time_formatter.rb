class SimplenoteConstructor::DateTimeFormatter
  def self.timestamp(time)
    month = SimplenoteConstructor::APMonthName.abbreviate(time.strftime('%B'))
    time.strftime("#{month} %d %Y %H:%M:%S")
  end
end
