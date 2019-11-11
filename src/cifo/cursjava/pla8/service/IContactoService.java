package cifo.cursjava.pla8.service;

import java.util.List;

import cifo.cursjava.pla8.entities.Contacto;

public interface IContactoService {
	List<Contacto> getContactos();
	void save(Contacto contacto);
	Contacto getContacto(int id);
	void delete(Contacto contacto);
}
