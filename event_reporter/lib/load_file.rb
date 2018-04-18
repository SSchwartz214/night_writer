module LoadFile

  def load(file = 'full_event_attendees.csv')
    guest_list = CSV.open(file, headers: true, header_converters: :symbol)
      guest_list.each do |row|
        @queue << Guest.new(row)
      end
  end

end
