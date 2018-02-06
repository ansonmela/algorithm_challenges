class Card

	attr_accessor :rank, :suit
	
	def initialize(rank, suit)
		@rank = rank
		@suit = suit

	end

	def self.random_card
	Card.new(rand(10), :spades)
end

	def output_card
		puts "#{self.rank} of #{self.suit}"

	end
end


class Deck
	def initialize
		@deck = []
		@ranks = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King']
		@suits = [:Diamonds, :Spades, :Hearts, :Clubs]

		@ranks.each do |rank|
			@suits.each do |suit|
			@deck << Card.new(rank,suit)

			end
		end
	end

	def shuffle
		@deck.shuffle!
	end

	def deal
		return @deck.shift
	end

	def output_deck
		@deck.each do |card|
			card.output_card
		end
	end
end

deck = Deck.new

deck.shuffle
deck.deal
deck.output_deck




