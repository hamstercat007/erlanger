require "sinatra"

def comment
end

get "/" do
    @selection = params[:selection]
	erb :home
end

post "/" do
	@questionNumber = params[:questionNumber]
	
	if params[:selection] == "earth"
		erb :earth
	elsif params[:selection] == "erlang"
		erb :erlang
	elsif params[:selection] == "saturn"
		erb :saturn
	elsif params[:selection] == "jupiter"
		erb :jupiter
	elsif params[:selection] == "mars"
		erb :mars
	else
		erb :home	
	end		
end	

post "/earth" do
	@questionNumber = params[:questionNumber].to_i + 1
	@selection = params[:selection]
	
	if params[:questionNumber] == "1" || params[:questionNumber] == "3"
		if params[:selection] == "stay"
			erb :earth
		elsif params[:selection] == "leave"
			erb :home
		else 
			erb :earth
		end
	else
		erb :earth
	end
end


post "/erlang" do
	@questionNumber = params[:questionNumber].to_i + 1
	@selection = params[:selection]
	
    # if params[:questionNumber] == "1" || params[:questionNumber] == "3" || params[:questionNumber] == "4"
		if params[:selection] == "stay"
			erb :erlang
		elsif params[:selection] == "leave"
			erb :home
		else 
			erb :erlang
		end
        #else
        #erb :erlang
        #end
end

post "/saturn" do
	@questionNumber = params[:questionNumber].to_i + 1
	@selection = params[:selection]
	@generated_number = rand(10)
    
	if params[:questionNumber] == "1" || params[:questionNumber] == "3"
		if params[:selection] == "stay"
			erb :saturn
		elsif params[:selection] == "leave"
			erb :home
		else 
			erb :saturn
		end
	else
		erb :saturn
	end
end


post "/jupiter" do
	@questionNumber = params[:questionNumber].to_i + 1
	@selection = params[:selection]
	
	if params[:questionNumber] == "1" || params[:questionNumber] == "2"
		if params[:selection] == "stay"
			erb :jupiter
		elsif params[:selection] == "leave"
			erb :home
		else 
			erb :jupiter
		end
	else
		erb :jupiter
	end
end

post "/mars" do
	@questionNumber = params[:questionNumber].to_i + 1
	@selection = params[:selection]
	
	if params[:questionNumber] == "1" || params[:questionNumber] == "2"
		if params[:selection] == "stay"
			erb :mars
		elsif params[:selection] == "leave"
			erb :home
		else 
			erb :mars
		end
	else
		erb :mars
	end
end



get "/about" do
	erb :about
end


get "/team" do
	erb :team
end










