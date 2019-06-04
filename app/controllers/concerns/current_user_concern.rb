module CurrentUserConcern
	extend ActiveSupport::Concern 

	def current_user
  		super || guest_user
  	end
  
  	def guest_user
  		OpenStruct.new(name: "Guest Ramos", 
  					   first_name: "Guest", 
  					   last_name: "Ramos", 
  					   email: "guest@teste.com"
  					   )
  	end
end