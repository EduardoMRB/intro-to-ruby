# DateRange = Struct.new(:start, :end)

class DateRange < Struct.new(:start_date, :end_date)
  def between(date)
    date <= end_date && date >= start_date
  end
end
