# Cameron Pfiffer
# August 15th, 2017
# Contains several stats functions designed merely as an exercise.

function variance(vector)
	v = sum(vector .^ 2)/size(vector)[1] - mean(vector).^2
end

function covariance(array)
	# Finds covariance matrix along the given array. Treats columns
	# as unique variables.
	number_variables = size(array)[2]
	cov = zeros(Float64, (number_variables, number_variables))
	for i in 1:number_variables
		for j in 1:number_variables
			i_mean = mean(array[:,i])
			j_mean = mean(array[:,j])

			i_vector = array[:,i] - i_mean
			j_vector = array[:,j] - j_mean

			co = (i_vector .* j_vector)/size(array)[1]
			cov[i, j] = sum(co)
		end
	end
	return cov
end
