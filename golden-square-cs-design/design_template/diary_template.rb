## 1. Describe the Problem
=begin
As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries
=end

## 2. Design the Class System
class Diary
  def initialize
    # constructs an empty array ready to store diary entries  
  end
  
  def add(entry) # entry is an instance of DiaryEntry representing a string
    # returns nothing 
  end 
  
  def list_diary
    # returns a list of all stored diary entries 
  end 
end 

class DiaryEntry
  def initialize(title, contents)
    # initilaises with a title and a contents representing strings 
  end 
  
  def title
    # returns the title representing a string 
  end 
  
  def contents
    # returns the contents represntings a string 
  end 
end 

class TodoList
  def initialize
    # constructs an empty array ready to store todos 
  end 
  
  def add(todo) # todo is an instance of Todo representing a string 
  end
  
  def list_todo
    # returns a list of all of the stored todos 
  end 
end 

class Todo
  def initialize(title)
    # constructs a title which represents a string 
  end 
  
  def title 
    # returns the title 
  end 
end 

class DiaryReader
  def initialize(wpm, entry)
    # intialises with an instance of diary 
    # and wpm which is an integer representing the users readbale words per minute
  end 
  
  def find_best_readable_chunk(minutes) # minutes is an integer representing the 
    # number of minutes the user has to read
    # returns the most appropriate diary entry when compared to the users predicted 
    # reading time calculated using minutes and wpm 
  end 
end 

class PhoneBook
  def initialize(diary)
    #instance of diary
  end
  
  def find_phone_numbers
    # returns all unique phone numbers found within the entirety of diary entries
  end 
end

## 3. Create Examples as Integration Tests

# 1 - Creating multiple diary entries, adding them to the diary and listing them

diary = Diary.new 
diary_entry_1 = DiaryEntry.new("my title 1", "my contents 1")
diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2 ")
diary_entry_3 = DiaryEntry.new("my title 3", "my contents 3 ")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.add(diary_entry_3)
expect(diary.list_diary).to eq [diary_entry_1, diary_entry_2, diary_entry_3]

# 2 - The perfect match when finding the best readable chunk

diary = Diary.new 
diary_reader = DiaryReader.new(2, diary)
diary_entry_1 = DiaryEntry.new("my title 1", "one" * 1)
diary_entry_2 = DiaryEntry.new("my title 2", "one" * 2)
diary_entry_3 = DiaryEntry.new("my title 3", "one" * 5)
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.add(diary_entry_3)
expect(diary_reader.find_best_readable_chunk(1)).to eq diary_entry_2

# 2 - An imperfect match when finding the best readable chunk

diary = Diary.new 
diary_reader = DiaryReader.new(2, diary)
diary_entry_1 = DiaryEntry.new("my title 1", "one" * 1)
diary_entry_2 = DiaryEntry.new("my title 2", "one" * 2)
diary_entry_3 = DiaryEntry.new("my title 3", "one" * 5)
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.add(diary_entry_3)
expect(diary_reader.find_best_readable_chunk(3)).to eq diary_entry_3

# 3 - Creating multiple todos and listing them

todo_list = TodoList.new
todo_1 = Todo.new("Title 1")
todo_2 = Todo.new("Title 2")
todo_3 = Todo.new("Title 3")
todo_list.add(todo_1)
todo_list.add(todo_2)
todo_list.add(todo_3)
expect(todo_list.list_todo_.to eq [todo_1, todo_2, todo_3]

# 4 - Find all unique phone numbers found within all diary entries 
=begin
As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries
=end 

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

## 4. Create Examples as Unit Tests

# Easier to think about these as we go along

## 5. Implement the Behaviour
