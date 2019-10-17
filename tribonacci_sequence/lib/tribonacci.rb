class Tribonacci
	def initialize(signature, length)
		@signature = signature
		@length = length
	end

	def sequence
		if @length < 4
			@signature.first(@length)
		else
			(@length - 3).times do
				@signature << @signature.last(3).reduce(:+)
			end
			@signature
		end
	end
end