package org.mj.example.entities

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Book)
class BookSpec extends Specification {
	String Title
	String Author
	String ISBM
	Date printDate
	
    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
		Book b = new Book();
		b.Title = "My First book"
		b.Author = "Jim Poffenberger"
		b.ISBM = "234-00983-00094"
		b.save();
		Book t  = b.findByAuthor("Jim Poffenberger");
		if (t.ISBM.equals(b.ISBM)) {
			assert true
		
		} else {
			assert false
		}			
    }
}
