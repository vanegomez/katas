class Tribonacci
	def initialize(signature, length)
		@signature = signature
		@length = length
	end

	def sequence
		return [] if @length == 0
		return [@signature[0]] if @length == 1
		return @signature.first(2) if @length == 2
		return @signature if @length == 3

		(@length - 3).times do
			@signature << @signature[-3..-1].reduce(:+)
		end
		@signature
	end
end

# Solution 2
#  n < 4 ? signature = signature.first(n) : (n-3).times { signature << signature.last(3).inject(:+) }
#  signature