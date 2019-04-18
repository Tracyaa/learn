def unsafe?(speed)
	if 40 <= speed && speed <= 60
		# this is the range of safe speed and we want it to be false
		return false
	else
		return true
	end
end


def not_safe?(speed)
	40 <= speed && speed <= 60 ? false : true
	#  if its safe? false. if its not safe? true
end
