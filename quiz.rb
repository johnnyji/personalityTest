require "sinatra"

get "/" do
	erb :index
end

get "/result" do
	erb :result
end

post "/result" do
	@result = params.values.group_by { |x| x }.values.max_by(&:size).first
	if @result == 1
		@personality = "Rational"
	elsif @result == 2
		@personality = "Artisian"
	end
	erb :result
end