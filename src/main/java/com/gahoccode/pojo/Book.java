package com.gahoccode.pojo;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;



@Entity
@Table(name = "BOOKS")
public class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "title", length = 30)
	private String title;
	
	private String author;
	
	private String isbn;
	
	
	@ManyToMany(mappedBy = "books")
	private Set<Student> student = new HashSet<Student>();
	public Book() {
		super();
	}

	public Book(String title, String author, String isbn) {
		
		this.title = title;
		this.author = author;
		this.isbn = isbn;
	}
	public Book(Book book) {
		
	}
}
