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

	deadlines = @result[0]
	mood = @result[1]
	interest = @result[2]

	if deadlines == 1 && mood == 1
		@personality = "HELLO"
	end

	erb :result
end