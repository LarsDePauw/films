package be.vdab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;
import java.util.Objects;

@Controller
public class FilmController {
    @Autowired
    FilmRepository filmRepository;

    @RequestMapping(value = "/hello")
    public String hello() {
        return "home";
    }



    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/films")
    public String films(Map<String, Object> model) {
        model.put("films", filmRepository.findAll());
        return "films/list";
    }

}
