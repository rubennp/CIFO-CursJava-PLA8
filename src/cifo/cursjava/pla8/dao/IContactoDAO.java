package cifo.cursjava.pla8.dao;

import java.util.List;

import cifo.cursjava.pla8.entities.Contacto;

public interface IContactoDAO {
	List<Contacto> getContactos();
	void save(Contacto contacto);
	Contacto getContacto(int id);
	void delete(Contacto contacto);
}
