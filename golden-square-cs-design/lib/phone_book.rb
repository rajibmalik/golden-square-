class PhoneBook
  def initialize(diary)
    @diary = diary 
    # instance of diary
  end
  
  def find_phone_numbers
    return @diary.list_diary.flat_map do |entry|
      find_phone_numbers_from_entry(entry)
    end.uniq
    # returns all unique phone numbers found within the entirety of diary entries
  end
  
  private 
  
  def find_phone_numbers_from_entry(entry)
    return entry.contents.scan(/0[0-9]{10}/)
  end 
end