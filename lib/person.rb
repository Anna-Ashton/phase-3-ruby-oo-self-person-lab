# your code goes here
require 'pry'

class Person
    attr_reader :name 
    attr_accessor :bank_account


    def initialize(name)
        @name = name
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
    end

    def happiness
        @happiness
    end

    def happiness=(happiness_level = 8)
        if happiness_level < 0
            self.happiness = 0
        elsif happiness_level > 10
            @happiness = 10
        else
            @happiness = happiness_level
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene_level = 8)
        if hygiene_level < 0
            self.hygiene = 0
        elsif hygiene_level > 10
            @hygiene = 10
        else
            @hygiene = hygiene_level
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid amount
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend friend_name
        self.happiness += 3
        friend_name.happiness += 3
        "Hi #{friend_name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation person, topic
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end
