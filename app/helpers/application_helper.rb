module ApplicationHelper
	def doctors_list
		return User.with_role(:doctor)
	end

	def full_name user
		return "#{user.first_name} #{user.last_name}"
	end
end
