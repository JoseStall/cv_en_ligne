require 'dotenv'
require 'gmail'
Dotenv.load('script.env')

class SendMail
	
	def initialize(params)
		@adress = params.to_s
		puts params
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
			to @adress
			subject "Cv de Guillaume Delory"
			text_part do
				body "Text of plaintext message."
			end
			html_part do
				content_type 'text/html; charset=UTF-8'
				body	"Bonjour,<br>
				je tiens tout d'abord à vous remercier de l'intérêt porté à mon profil,<br>
				je vous prie de trouver en pièce jointe mon cv.<br>
				N'hésitez pas à me contacter si vous souhaitez plus d'informations. <br>
				Cordialement. <br>
				<strong>Guillaume Delory</strong>
				<strong>06.52.46.21.30</strong>"
			end

		end
	end
end