class Sufferers < Sinatra::Base
  get "/" do
		"Odabrani jadničak: #{sufferer}"
	end

	get "/api" do
		content_type :json
		{ sufferer: sufferer }.to_json
	end

	private
		
		def sufferer
			100.times do
				%w[anela danijel dejan lucija tomislav vladimir].sample
			end
			%w[anela danijel dejan lucija tomislav vladimir].sample
		end
end
