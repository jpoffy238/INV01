package org.mj.example.entities

class Address {
	String houseNumber
	String streetName
	String streetType
	String city
	String state
	String zipcode
	String line2
    static constraints = {
		
    }
	static mapping = {
		table 'address'
	}
}
