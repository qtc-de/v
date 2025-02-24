fn test_fixed_array_of_option() {
	mut a1 := [3]?int{init: ?int(1)}
	a1[0] = none
	a1[1] = 2
	println(a1)
	assert '${a1}' == '[Option(none), Option(2), Option(1)]'

	mut a2 := [3]?int{}
	a2[0] = 1
	println(a2)
	assert '${a2}' == '[Option(1), Option(none), Option(none)]'
}
