package main

import "fmt"

func main() {
	s1 := []string{"s1", "s1"}
	fmt.Printf("s1: %v\n", s1)

	s2 := append(s1, "s2", "s2")
	fmt.Printf("s1: %v, s2: %v\n", s1, s2)

	s3 := append(s2, "s3", "s3")
	fmt.Printf("s1: %v, s2: %v, s3: %v\n", s1, s2, s3)

	s4 := append(s3, "s4", "s4")

	fmt.Printf("s1: %v, s2: %v, s3: %v, s4: %v\n", s1, s2, s3, s4)
	s3[0] = "XX"
	fmt.Printf("s1: %v, s2: %v, s3: %v, s4: %v, replacing first element in s3\n", s1, s2, s3, s4)

	s4[0] = "YY"
	fmt.Printf("s1: %v, s2: %v, s3: %v, s4: %v, replacing first element in s4\n", s1, s2, s3, s4)
}
