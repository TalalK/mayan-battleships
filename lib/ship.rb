class Ship

	DEFAULT_LENGTH = 3
	attr_reader :length, :hits

	def initialize(length: DEFAULT_LENGTH)	
		@length = length
		@hits = 0
	end

	def self.canoe
		new(length:3)
	end

	def self.raft
		new(length:2)
	end

	def self.shortboat
		new(length:4)
	end

	def self.longboat
		new(length:6)
	end

	def hit!
		@hits += 1
	end

	def sunk?
		hits == length
	end

end