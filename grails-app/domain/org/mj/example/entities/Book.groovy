package org.mj.example.entities

class Book {
	String title
	static hasOne = [author: Author]
	String isbn
	String printDate
    static constraints = {
			
    }
	static mapping = {
		table 'book'
	}
	
}
