require "array"

describe Array do 


#[:inspect, :to_s, :to_a, :to_ary, :frozen?, :==, :eql?, 
#:hash, :[], :[]=, :at, :fetch, :first, :last, :concat,
# :<<, :push, :pop, :shift, :unshift, :insert, :each, :each_index, :reverse_each, :length, :size, :empty?, :find_index, :index, :rindex, :join, :reverse, :reverse!, :rotate, :rotate!, :sort, :sort!, :sort_by!, :collect, :collect!, :map, :map!, :select, :select!, :keep_if, :values_at, :delete, :delete_at, :delete_if, :reject, :reject!, :zip, :transpose, :replace, :clear, :fill, :include?, :<=>, :slice, :slice!, :assoc, :rassoc, :+, :*, :-, :&, :|, :uniq, :uniq!, :compact, :compact!, :flatten, :flatten!, :count, :shuffle!, :shuffle, :sample, :cycle, :permutation, :combination, :repeated_permutation, :repeated_combination, :product, :take, :take_while, :drop, :drop_while, :bsearch, :pack, :entries, :sort_by, :grep, :find, :detect, :find_all, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :all?, :any?, :one?, :none?, :min, :max, :minmax, :min_by, :max_by, :minmax_by, :member?, :each_with_index, :each_entry, :each_slice, :each_cons, :each_with_object, :chunk, :slice_before, :lazy, :nil?, :===, :=~, :!~, :class, :singleton_class, :clone, :dup, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]



array = [1, 2, 3, 4, 5, 6]
array2 = [4, 5, 6]
hash = {:key => 1, :key2 => 2}
hash2 = {"giorgia" => "1", "pablo" => "cacca"}
x = 1
ele = 4



#inspect
it "gives you back the array inspected as a string" do
	expect(Array.array_inspection(array)).to eq("[1, 2, 3, 4, 5, 6]")
end


#to_s
it "gives you back a string from an original array" do
	expect(Array.array_to_string(array)).to eq("[1, 2, 3, 4, 5, 6]")
end


#to_a
it "gives you back an array" do
	expect(Array.hash_to_array(hash)).to eq([[:key, 1], [:key2, 2]])
	expect(Array.hash_to_array(hash2)).to eq([["giorgia", "1"], ["pablo", "cacca"]])
end

#to_frozen?
it "returns true if the array is frozen" do
	expect(Array.query_if_array_is_frozen(array)).to be (true)
end

#==
it "return true if the content is the same" do
	expect(Array.have_the_same_content(array,array2)).to be false

end

#eql?
it "returns true if the content is the same" do
	expect(Array.have_the_same_content_2(array,array2)).to eq(array == array2)
end


#at
it "returns the value AT the index" do
	expect(Array.give_me_the_value_at_this_index(array, x)).to eq(2)
end

#fetch
it "get the value of index but if out of range throws an error" do
	expect(Array.give_me_the_value_of_index(array, x)).to eq(array[x])
end


#first
it "gives you back array[0]" do
	expect(Array.give_me_the_first_element(array)).to eq(array[0])
end

#last
it "gives you the last element of the array" do
	expect(Array.give_me_the_last_element(array)).to eq(array[-1])
	end

#concat
it "concatenates b to a" do
	expect(Array.concat_b_to_a(array, array2)).to eq(array + array2)
end


#<<
it "adds the element to the array in last position" do
	expect(Array.add_ele(array, ele)).to eq(array << ele)
end

#push
it "push element into an array" do
	expect(Array.push_ele(array, ele)).to eq(array << ele)
	end

#pop
it "it removes the last n elements from an array and changes the lenght of original array" do
	expect(Array.pop_element(array)).to eq(array)
end

#shift
it "removes the first element of the array & returns it. If the array is empty returns null" do
	testina = [22,23,24,25]
	expect(Array.shift_ele(testina)).to eq(22)
	end

#unshift
it "propends element at the beginning of the array" do
	gio_test = [20, 30, 40]
	expect(Array.unshift_ele(gio_test, ele)).to eq([4, 20, 30, 40])
end

#insert
it "insert the value before the element with the given index" do
	gio_test_i = %w{yoyo es un gordo}
	i = 3
	expect(Array.insert_me_before_index(gio_test_i, i, ele)).to eq(gio_test_i.insert(i, ele))
	end



end