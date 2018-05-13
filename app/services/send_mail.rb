require 'dotenv'
require 'gmail'
require 'pry'
Dotenv.load('script.env')

class SendMail
	
	def initialize(params)
		@adress = params
	end

	def perform
		log_in_to_gmail
		send_email
	end

	def log_in_to_gmail
		@gmail = Gmail.connect!(ENV['username'],ENV['password'])
	end

	def send_email
		@gmail.deliver do
			to 'g.delory62@gmail.com'
			subject "Cv de Guillaume Delory"
			text_part do
				body "Text of plaintext message."
				content_type 'text/html; charset=UTF-8'
			end
			html_part do
				body	"Bonjour"
			end
		end
	end
end