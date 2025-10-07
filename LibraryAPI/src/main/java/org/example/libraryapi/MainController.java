package org.example.libraryapi;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
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

    @GetMapping("/main")
    public String mainPage(Model m) {
        List<Book> books = dr.getAllBooks();
        m.addAttribute("books", books);
    }
}
