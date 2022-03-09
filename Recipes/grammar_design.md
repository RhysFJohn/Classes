# Grammar Method Design Recipe

## 1. Describe the problem

_Put or write the user story here. Add only clarifying notes you might have._

> As a user
> So that I can improve my grammar
> I want to verify that a text starts witha capital letter
> and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
verify_grammer = check_grammer(text)

# * text is a string with words in it
# * verify_grammer is a boolean depending on whether it checks out
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
  # 1 
  check_grammer("")
  # fail "Not a sentence."
  
  # 2 
  check_grammer("Hello, I am Rhys.")
  # => true
  
  # 3 
  check_grammer("Hello, I am Rhys")
  # => false
  
  # 4 
  check_grammer("hello, I am Rhys.")
  # => false
  
  # 5 
  check_grammer("HELLO, I am Rhys.")
  # => true
  
  # 6 
  check_grammer("Hello, I am Rhys!")
  # => true
  
  # 7 
  check_grammer("Hello, I am Rhys?")
  # => true
  
  # 8 
  check_grammer("Hello, I am Rhys,")
  # => false
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the tst-driving process of red, green, refactor to implement the behaviour._