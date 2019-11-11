package cifo.cursjava.pla8.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cifo.cursjava.pla8.entities.Contacto;
import cifo.cursjava.pla8.service.IContactoService;

@Controller
@RequestMapping("contacto")
public class ContactoController {

	@Autowired
	private IContactoService contactoService;
	
	@RequestMapping("lista")
	public String lista(Model model) {
		List<Contacto> contactos = contactoService.getContactos();
		model.addAttribute("contactos", contactos);
		return "listaContactos";
	}
	
	@GetMapping("nuevo")
	public String addContacto(Model model) {
		Contacto contacto = new Contacto();
		model.addAttribute("contacto", contacto);
		return "formularioContacto";
	}
	
	@PostMapping("guarda")
	public String saveContacto(@ModelAttribute("contacto") Contacto contacto) {
		contactoService.save(contacto);
		return "redirect:/contacto/lista";
	}
	
	@GetMapping("edita")
	public String updateContacto(@RequestParam("id") int id, Model modelo) {
		Contacto contacto = contactoService.getContacto(id);
		modelo.addAttribute("contacto", contacto);
		return "formularioContacto";
	}
	
	@GetMapping("borra")
	public String deleteContacto(@RequestParam("id") int id) {
		Contacto contacto = contactoService.getContacto(id);
		contactoService.delete(contacto);
		return "redirect:/contacto/lista";
	}
}
