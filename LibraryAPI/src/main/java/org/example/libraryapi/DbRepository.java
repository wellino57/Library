package org.example.libraryapi;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DbRepository {
    JdbcTemplate jt;

    public DbRepository(JdbcTemplate jt) {
        this.jt = jt;
    }

    public List<Book> getAllBooks() {
        return jt.query(
                "SELECT book.id, title, author.name AS author, dateOfRelease, stock, description FROM book JOIN author ON book.authorId = author.id ORDER BY book.id",
                BeanPropertyRowMapper.newInstance(Book.class)
        );
    }
}
