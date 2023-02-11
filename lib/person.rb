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
  
    def happiness=(value)
      @happiness = [0, [value, 10].min].max
    end
  
    def hygiene=(value)
      @hygiene = [0, [value, 10].min].max
    end
  end
    
  

p = Person.new("Patrick")
binding.pry
