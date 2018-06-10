package com.exemple.sweater;

import com.exemple.sweater.domain.Message;
import com.exemple.sweater.repos.MessageRepos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class GreetingsController  {
    @Autowired
    private MessageRepos messageRepos;

    @GetMapping
    public String main(Map<String, Object> model) {
        Iterable<Message> messages = messageRepos.findAll();

        model.put("messages", messages);

        return "main";
    }
    @PostMapping
    public String add(@RequestParam String text, @RequestParam String tag, Map<String, Object> model) {
        Message message = new Message(text, tag);
        messageRepos.save(message);
        Iterable<Message> messages = messageRepos.findAll();
        model.put("messages", messages);
        return "main";
    }
}
