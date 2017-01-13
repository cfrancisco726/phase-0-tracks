arr = [5, 10, 3, 17, 20, 25]
 	

def search_array(arr, num)
	arr_new = []
	found = false

	arr.each do |item|
		arr_new << item
		if item == num
			found = true
			break
		end
	end
	if found == true
		return arr_new.length - 1
	else
		return nil
	end
end


p search_array(arr, 20)



def fib(num)
	if num > 1
		fib_arr = [0,1]
		(num - 2).times do
		fib_arr << fib_arr[-1] + fib_arr[-2]
	end
		return fib_arr
    else
		return [0]
	end
end

p fib(1)


