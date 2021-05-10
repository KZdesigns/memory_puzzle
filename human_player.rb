class HumanPlayer
    attr_accessor :previous_guess

    def initialize(_size)
        @previous_guess = nil
    end

    def get_input
        prompt
        parse(STDIN.gets.chomp)
    end

    def prompt
        puts "Please enter a position to flip a card (ex. '2,3')"
        print "> "
    end

    def parse(string)
        string.split(",").map { |x| Integer(x) }
    end

    def recieved_revealed_card(pos, value)
        #duck typing
    end

    def receive_match(_pos1, _pos2)
        puts "It's a match!"
    end
end