package org.mj.example.entities

class Author extends Person{

	static hasMany = [books: Book]
	
    static constraints = {
    }
	static mapping = {
		table 'Author'
	}
}
