package org.example.libraryapi;

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
        return null;
    }
}
