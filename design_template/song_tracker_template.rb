## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks Ive listened to and see a list of them

## 2. Design the Class Interface

class SongTracker 
  def initialize
  end 
  
  def add(track) # Track is a string representing the song added 
  end
  
  def list 
    # Return the list of tracks that have been added
  end 
end 

## 3. Create Examples as Tests
# 1 Listing songs when none have been added 

song_tracker = SongTracker.new 
song_tracker.list => []

# 2 Adding a song to the list 

song_tracker = SongTracker.new 
song_tracker.add("Changes") 
song_tracker.list => ["Changes"]

# 3 Addings two songs to the list 

song_tracker = SongTracker.new 
song_tracker.add("Changes") 
song_tracker.add("Novacaine")
song_tracker.list => ["Changes", "Novacaine"]

# 4 Entering an empty string when adding a song 

song_tracker = SongTracker.new 
song_tracker.add("")
song_tracker.list => fail 


## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->