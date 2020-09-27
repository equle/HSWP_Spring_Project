package kr.co.controller;


import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hswp.habo.dto.NoteDTO;
import com.hswp.habo.service.NoteService;



/**
 * Handles requests for the application home page.
 */
@Controller

@RequestMapping("/*")
public class NoteController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoteController.class);
	
	@Inject
	NoteService service;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/writeNote", method = RequestMethod.GET)
	public String writeNote() throws Exception {
		logger.info("writeNote");
		return "notes/writeNote";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(NoteDTO dto) throws Exception{
		logger.info("write");
		
		service.write(dto);
		
		return "notes/writeNote";
	}
	
	@RequestMapping(value = "/listNote", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		logger.info("listNote");
		
		model.addAttribute("list", service.list());
		
		return "notes/listNote";
	}
	
	@RequestMapping(value = "/readNote", method = RequestMethod.GET)
	public String read(NoteDTO dto, Model model) throws Exception{
		logger.info("read");
		
		model.addAttribute("read", service.read(dto.getNum()));
		
		return "notes/readNote";
	}
	@RequestMapping(value = "/updateNote", method = RequestMethod.GET)
	public String updateNote(NoteDTO dto, Model model) throws Exception{
		logger.info("updateNote");
		
		model.addAttribute("read", service.read(dto.getNum()));
		
		return "notes/updateNote";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(NoteDTO dto, Model model) throws Exception{
		logger.info("read");
		
		service.update(dto);
		
		return "redirect:/listNote";
	}
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(NoteDTO dto, Model model) throws Exception{
		logger.info("delete");
		
		service.delete(dto.getNum());
		
		return "redirect:/listNote";
	}

}
