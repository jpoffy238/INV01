package org.mj.example.entities

class Address {
	String line1
	String city
	String state
	String zipcode
	String line2
    static constraints = {
		line2(null)
    }
	static mapping = {
		table 'address'
	}
	
}
