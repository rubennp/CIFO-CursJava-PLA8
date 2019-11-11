package cifo.cursjava.pla8.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cifo.cursjava.pla8.entities.Contacto;

@Repository
public class ContactoDAO implements IContactoDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Contacto> getContactos() {
		Session s = sessionFactory.getCurrentSession();
		List<Contacto> contactos = s.createQuery("from Contacto", Contacto.class).list();
		return contactos;
	}
	
	@Override
	public void save(Contacto contacto) {
		Session s = sessionFactory.getCurrentSession();
		s.saveOrUpdate(contacto);
	}

	@Override
	public Contacto getContacto(int id) {
		Session s = sessionFactory.getCurrentSession();
		return s.get(Contacto.class, id);
	}

	@Override
	public void delete(Contacto contacto) {
		Session s = sessionFactory.getCurrentSession();
		s.delete(contacto);
	}
}
