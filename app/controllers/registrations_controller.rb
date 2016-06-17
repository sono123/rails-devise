
class RegistrationsController < Devise::RegistrationsController

	def create
		invite_code = params[:invite_code]
		if invite_code == 'RSVP123'
			super
		else
			redirect_to root_path, :notice => 'Your invite code is not valid!'
		end
	end

end
