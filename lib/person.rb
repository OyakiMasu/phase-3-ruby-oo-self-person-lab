require 'pry'

# class Person
#     attr_accessor :name
#     attr_accessor :bank_account 
#     attr_accessor :happiness
#     attr_accessor :hygiene
 
#     def initialize(name, bank_account=25 ,happiness=8, hygiene=8)
#         @name = name
#         @bank_account = bank_account
#         @happiness = happiness
#         @hygiene = hygiene
#     end

#     def happiness=(happiness)
#     @happiness = :happiness

#       if happiness < 0
#         @happiness = 0
#       elsif happiness = 10
#         @happiness = 10
#       else 
#         @happiness = happiness
#         end
#     end

#     def happiness
#         @happiness
#     end
  
#     def hygiene=(hygiene)
#     @hygiene = :hygiene
#     if hygiene < 0
#         @hygiene = 0
#       elsif hygiene = 10
#         @hygiene = 10
#       else 
#         @hygiene = hygiene
#       end
#     end

#     def hygiene
#         @hygiene
#     end


# end


class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    
   def clean?
    hygiene > 7
   end
   
    def happy?
      happiness > 7
    end
     
    def get_paid(amount)
      self.bank_account += amount
     "all about the benjamins"
    end

    def take_bath
      self.hygiene += 4
     "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
      self.happiness += 2
      self.hygiene -= 3
     "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
     "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(friend, topic)
      case topic 
      when "politics"
        self.happiness -= 2
        friend.happiness -= 2
       "blah blah partisan blah lobbyist"
      
      when "weather"
        self.happiness += 1
        friend.happiness += 1
       "blah blah sun blah rain"

      else 
        "blah blah blah blah blah"
      end
    end


    def happiness=(value)
      @happiness = [0, [value, 10].min].max
    end
  
    def hygiene=(value)
      @hygiene = [0, [value, 10].min].max
    end

  end

p = Person.new("Patrick")
p2 = Person.new("Jesse")
binding.pry
