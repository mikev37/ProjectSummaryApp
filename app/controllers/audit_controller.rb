class AuthenticationController < ApplicationController
	def index
		@audits = @article.audits
	end
end