require "sinatra"

get "/" do
	erb :index
end

get "/result" do
	erb :result
end

post "/result" do
	@result_string = params.values
	@result = @result_string.map(&:to_i)

	deadline = @result[0]
	mood = @result[1]
	interest = @result[2]

	if mood == 1 && interest == 1
		@personality = "Rational"
		@bio = "You're rational, which means blah blah blah"
	elsif mood == 2 && interest == 1
		@personality = "Idealist"
		@bio = "You're an idealist, which means blah blah blah"
	elsif deadline == 2 && mood == 2 && interest == 2
		@personality = "Artisian"
		@bio = "You're an artisian, which means blah blah blah"
	elsif deadline == 1 && mood == 2 && interest == 2
		@personality = "Guardian"
		@bio = "You're a guardian, which means blah blah blah"
	else
		@personality = "Impossible"
		@bio = "This combination is actually mathematically impossible so it will never show up, therefore fuck you :D"
	end
	erb :result
end