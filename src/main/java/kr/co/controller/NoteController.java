package kr.co.controller;


import java.util.Locale;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



/**
 * Handles requests for the application home page.
 */
@Controller

@RequestMapping("/*")
public class NoteController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoteController.class);
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/writeNote", method = RequestMethod.GET)
	public String write(Locale locale, Model model) {
		logger.info("writeNote");
		return "notes/writeNote";
	}
	
	@RequestMapping(value = "/listNote", method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		logger.info("listNote");
		return "notes/listNote";
	}

}
