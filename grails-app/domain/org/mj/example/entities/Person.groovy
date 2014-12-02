package org.mj.example.entities

class Person {
	static belongsTo = [address: Address]
	String firstName
	String lastName
	
	Date dob
	Date dod
	static hasMany = [books:Book]
	
	
    static constraints = {
		dod(null)
    }
	static mapping = {
		table 'person'
	}
}
