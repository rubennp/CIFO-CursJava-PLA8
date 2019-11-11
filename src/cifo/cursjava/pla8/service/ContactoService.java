package cifo.cursjava.pla8.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cifo.cursjava.pla8.dao.IContactoDAO;
import cifo.cursjava.pla8.entities.Contacto;

@Service
public class ContactoService implements IContactoService {
	
	@Autowired 
	private IContactoDAO contactoDAO;
	
	@Override
	@Transactional
	public List<Contacto> getContactos() {
		return contactoDAO.getContactos();
	}
	
	@Override
	@Transactional
	public void save(Contacto contacto) {
		contactoDAO.save(contacto);
	}

	@Override
	@Transactional
	public Contacto getContacto(int id) {
		return contactoDAO.getContacto(id);
	}

	@Override
	@Transactional
	public void delete(Contacto contacto) {
		contactoDAO.delete(contacto);
	}
}
