class Sufferers < Sinatra::Base
	NAMES = %w[Anela Danijel Dejan Lucija Tomislav Vladimir]
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
				NAMES.sample
			end
			NAMES.sample
		end
end
