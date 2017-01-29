=begin
push numbers from arr to arr_new until number equals argument
return length of arr_new or nil if argument does not match
=end
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


=begin
hardcode fib_arr first 2 indexes
loop number - 2 times 
add last 2 numbers of array and push to array
added a conditional to account for number 1
=end

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

p fib(4)


=begin
pseudocode for even_odd_ascending(arr)
The following method sorts an array in ascending order starting with even numbers then odd
We learned from the insertion method.
Define method. Parameter will be the array we are sorting.
Declare an ascending array and set index 0 to first number of array we want to sort
Loop through array, compare each number (array number to ascending array number)
Push array number to ascending array.  Locatiion will be determined if number is less than ascending array number
Create another loop to determine if odd or even
Push even and odd numbers to different even and odd arrays
Both arrays should be sorted in ascending order already
Concat odd array to even array
return combined array

=end


def even_odd_ascending(arr)
	#arrays
    ascend_arr = [arr[0]]
    arr.delete_at(0)
    even_arr = []
    odd_arr = []
    # compare arr number to ascend_arr then insert
    # if arr number is less than ascend_arr number insert to ascend_arr index
    # if number is not less insert 1 index after
    for i in arr
        counter = 0
        while counter < ascend_arr.length
            if i <= ascend_arr[counter]
                ascend_arr.insert(counter,i)
               break
			elsif counter == ascend_arr.length-1
                ascend_arr.insert(counter+1,i)
               break
         	end
            counter +=1
        end
    end
    #if even push to even_arr
    # if odd push to odd_arr
    for b in ascend_arr 

    		if b % 2 == 0
    			even_arr.push(b)
    		else 
    			odd_arr.push(b)
    		end
    
    end
    # add odd_arr to even_arr 
    even_arr.concat(odd_arr)
end

arr = [10, 3, 43, 12, 15, 37, 21, 98]

p even_odd_ascending(arr) 



