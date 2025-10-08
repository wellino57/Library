package org.example.libraryapi;

import java.sql.Date;

public class Book {
    int id;
    String title;
    int authorId;
    Date dateOfRelease;
    int stock;

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

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
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

    public Book(int id, String title, int authorID, Date dateOfRelease, int stock) {
        this.id = id;
        this.title = title;
        this.authorId = authorID;
        this.dateOfRelease = dateOfRelease;
        this.stock = stock;
    }
}
