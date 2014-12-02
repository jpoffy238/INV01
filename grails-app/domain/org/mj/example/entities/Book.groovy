package org.mj.example.entities

class Book {
	String title
	static hasOne = [author: Author]
	String isbn
	Date printDate
    static constraints = {
			
    }
	static mapping = {
		table 'book'
	}
	
}
