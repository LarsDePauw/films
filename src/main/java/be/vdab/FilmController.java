package be.vdab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
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

    @RequestMapping("/film")
    public String film(Map<String, Object> model, @RequestParam("id") int filmId) {
        model.put("film", filmRepository.findOne(filmId));
        return "films/details";
    }

    @RequestMapping(value = "/form")
       public String form() {
        return "films/form";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@Valid Film film, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
                return "film/form";
        } else {

        filmRepository.save(film);
        }


        return "redirect:/films";
    }

}


