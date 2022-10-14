require "pry"

class Person
    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    attr_reader :name, :bank_account, :happiness, :hygiene

    def bank_account=(value)
        @bank_account = value
    end

    def happiness=(value)
        if 0 > value
            @happiness = 0
        elsif 10 < value
            @happiness = 10
        else
            @happiness = value
        end
    end

    def hygiene=(value)
        if 0 > value
            @hygiene = 0
        elsif 10 < value
            @hygiene = 10
        else
            @hygiene = value
        end
    end

    def clean?
        if self.hygiene > 7
            return true
        else 
            return false
        end
    end

    def happy?
        if self.happiness > 7
            return true
        else 
            return false
        end
    end

    def get_paid amount
        @bank_account = self.bank_account + amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend friend
        friend.happiness = friend.happiness + 3
        self.happiness = self.happiness + 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness = friend.happiness - 2
            self.happiness = self.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness = friend.happiness + 1
            self.happiness = self.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end

