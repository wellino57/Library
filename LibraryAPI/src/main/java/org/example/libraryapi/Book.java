package org.example.libraryapi;

import java.sql.Date;

public class Book {
    int id;
    String title;
    String author;
    Date dateOfRelease;
    int stock;

    String description;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getDateOfRelease() {
        return dateOfRelease;
    }

    public void setDateOfRelease(Date dateOfRelease) {
        this.dateOfRelease = dateOfRelease;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Book() {}
    public Book(int id, String title, String author, Date dateOfRelease, int stock, String description) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.dateOfRelease = dateOfRelease;
        this.stock = stock;
        this.description = description;
    }
}
