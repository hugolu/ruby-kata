describe "Expections" do
	
	context "Equivalence" do
		specify "expect(actual).to eq(expected)" do
			# passes if actual == expected
			str1 = "hello world"
			str2 = "hello world"
			expect(str1).to eq(str2)
		end

		specify "expect(actual).to eql(expected)" do
			# passes if actual.eql?(expected)
			str1 = "hello world"
			str2 = "hello world"
			expect(str1).to eql(str2)
		end

		specify "expect(actual).not_to eql(not_expected)" do
			# passes if not(actual.eql?(expected))
			obj1 = Object.new
			obj2 = Object.new
			expect(obj1).not_to eql(obj2)
		end
	end

	context "Identity" do
		specify "expect(actual).to equal(expected)" do
			# passes if actual.equal?(expected)
			str1 = "hello world"
			str2 = str1
			expect(str1).to equal(str2)
		end

		specify "expect(actual).to be(expected)" do
			# passes if actual.equal?(expected)
			str1 = "hello world"
			str2 = str1
			expect(str1).to be(str2)
		end

		specify "expect(actual).not_to be(expected)" do
			# passes if not(actual.equal?(expected))
			str1 = "hello world"
			str2 = "hello world"
			expect(str1).not_to be(str2)
		end
	end

end