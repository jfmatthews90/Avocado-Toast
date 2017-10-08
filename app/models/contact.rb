class Contact < MailForm::Base
	attribute :name,			:validate => true
	attribute :email,			:validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :message,		:validate => true
	attribute :nickname,	:captcha => true

	def headers
		{
			:subject => "Contact Form",
			:to => "jmatth14@yahoo.com",
			:from => %("#{name}" <#{email}>)
		}
	end
end
