class ApplicationController < ActionController::Base
	include DeviseWhitelist
	include SetSource
	include CurrentUserConcern
	include DefaultPageContent


	before_action :set_copyright

	def set_copyright
		@copyright = DevcampViewTool::Renderer.copyright 'Pleum', 'All rights reserved'
	end


end


