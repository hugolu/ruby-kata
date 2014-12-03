require_relative "../../lib/FizzBuzz"

describe FizzBuzz do
	
	specify "convert(1) to 1" do
		expect(FizzBuzz.convert(1)).to eq("1")
	end

	specify "convert(2) to 2" do
		expect(FizzBuzz.convert(2)).to eq("2")
	end

	specify "convert(3*N) to Fizz" do
		expect(FizzBuzz.convert(3)).to eq("Fizz")
		expect(FizzBuzz.convert(6)).to eq("Fizz")
		expect(FizzBuzz.convert(9)).to eq("Fizz")
	end

	specify "convert(5*N) to Buzz" do
		expect(FizzBuzz.convert(5)).to eq("Buzz")
		expect(FizzBuzz.convert(10)).to eq("Buzz")
	end

	specify "convert(3*5*N) to FizzBuzz" do
		expect(FizzBuzz.convert(15)).to eq("FizzBuzz")
		expect(FizzBuzz.convert(30)).to eq("FizzBuzz")
		expect(FizzBuzz.convert(45)).to eq("FizzBuzz")
	end

end