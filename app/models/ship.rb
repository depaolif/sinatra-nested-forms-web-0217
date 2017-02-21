require 'pry'

class Ship
	attr_reader :name, :type, :booty
	@@ships = []

	def initialize(args)
		@name = args.fetch(:name)
		@type = args.fetch(:type)
		@booty = args.fetch(:booty)
		@@ships << self
	end

	def self.all
		@@ships
	end

	def self.clear
		@@ships = []
	end
end