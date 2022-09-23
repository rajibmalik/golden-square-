require "diary"
require "diary_entry"
require "diary_reader"
require "todo_list"
require "todo"
require "phone_book"

RSpec.describe "diary integration" do
  context "Given multiple diary entries" do 
  it "Adds them to the diary and can list them all" do
    diary = Diary.new 
    diary_entry_1 = DiaryEntry.new("my title 1", "my contents 1")
    diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
    diary_entry_3 = DiaryEntry.new("my title 3", "my contents 3 ")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.add(diary_entry_3)
    expect(diary.list_diary).to eq [diary_entry_1, diary_entry_2, diary_entry_3]
    end 
  end 
  
  it "Adds the entries to the diary and can find the most applicable entry 
  that the user can read with a perfect reading time match" do 
    diary = Diary.new 
    diary_reader = DiaryReader.new(2, diary)
    diary_entry_1 = DiaryEntry.new("my title 1", "one " * 1)
    diary_entry_2 = DiaryEntry.new("my title 2", "one " * 2)
    diary_entry_3 = DiaryEntry.new("my title 3", "one " * 5)
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.add(diary_entry_3)
    expect(diary_reader.find_best_readable_chunk(1)).to eq diary_entry_2
  end 
  
  it "Adds the entries to the diary and can find the most applicable entry that the user 
  can read with an imperfect reading time match" do 
    diary = Diary.new 
    diary_reader = DiaryReader.new(2, diary)
    diary_entry_1 = DiaryEntry.new("my title 1", "one " * 1)
    diary_entry_2 = DiaryEntry.new("my title 2", "one " * 2)
    diary_entry_3 = DiaryEntry.new("my title 3", "one " * 5)
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.add(diary_entry_3)
    expect(diary_reader.find_best_readable_chunk(3)).to eq diary_entry_3
  end 
  
  it "Adds todo's to a list and can return them all" do 
    todo_list = TodoList.new
    todo_1 = Todo.new("Title 1")
    todo_2 = Todo.new("Title 2")
    todo_3 = Todo.new("Title 3")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    todo_list.add(todo_3)
    expect(todo_list.list_todo).to eq [todo_1, todo_2, todo_3]
  end 
  
  it "Can find unique phone numbers within all diary entries" do
    diary = Diary.new 
    phonebook = PhoneBook.new(diary)
    diary_entry_1 = DiaryEntry.new("my title 1", " 07484758514 this is my contents one")
    diary_entry_2 = DiaryEntry.new("my title 2", "this is 07484758514 my contents two")
    diary_entry_3 = DiaryEntry.new("my title 3", "this is my contents three 07484758515")
    diary_entry_4 = DiaryEntry.new("my title 3", "this is my  07484758516 contents four")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.add(diary_entry_3)
    diary.add(diary_entry_4)
    expect(phonebook.find_phone_numbers).to eq [
    "07484758514",
    "07484758515",
    "07484758516"
    ]
  end 
end 