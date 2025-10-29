package org.example.libraryapi;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/library")
public class MainController {
    DbRepository dr;

    public MainController(DbRepository dr) {
        this.dr = dr;
    }

    @GetMapping("/test")
    public String testPage() {
        return "test succesful";
    }

    @GetMapping("/home")
    public String homePage(Model m) {
        List<Book> books = dr.getAllBooks();
        m.addAttribute("books", books);
        return "index";
    }

    @GetMapping("/adminPanel")
    public String adminPanel(Model m) {
        List<Book> books = dr.getAllBooks();
        m.addAttribute("books", books);
        return "admin_panel";
    }

    @GetMapping("/adminEditPage/{id}")
    public String adminEditPage(@PathVariable int id, Model m) {
        Book book = dr.getBookById(id);
        List<Author> authors = dr.getAllAuthors();
        m.addAttribute("book", book);
        m.addAttribute("authors", authors);
        return "admin_edit_page";
    }
}
