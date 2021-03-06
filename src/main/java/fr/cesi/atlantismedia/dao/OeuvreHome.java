package fr.cesi.atlantismedia.dao;
// Generated 12 janv. 2020 17:03:34 by Hibernate Tools 5.4.7.Final

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.naming.InitialContext;

import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

import fr.cesi.atlantismedia.entities.Oeuvre;

/**
 * Home object for domain model class Oeuvre.
 * @see fr.cesi.atlantismedia.dao.Oeuvre
 * @author Hibernate Tools
 */
public class OeuvreHome {

	private static final Logger logger = Logger.getLogger(OeuvreHome.class.getName());

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			logger.log(Level.SEVERE, "Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(Oeuvre transientInstance) {
		logger.log(Level.INFO, "persisting Oeuvre instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			logger.log(Level.INFO, "persist successful");
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Oeuvre instance) {
		logger.log(Level.INFO, "attaching dirty Oeuvre instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			logger.log(Level.INFO, "attach successful");
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "attach failed", re);
			throw re;
		}
	}

	public void attachClean(Oeuvre instance) {
		logger.log(Level.INFO, "attaching clean Oeuvre instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			logger.log(Level.INFO, "attach successful");
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "attach failed", re);
			throw re;
		}
	}

	public void delete(Oeuvre persistentInstance) {
		logger.log(Level.INFO, "deleting Oeuvre instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			logger.log(Level.INFO, "delete successful");
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "delete failed", re);
			throw re;
		}
	}

	public Oeuvre merge(Oeuvre detachedInstance) {
		logger.log(Level.INFO, "merging Oeuvre instance");
		try {
			Oeuvre result = (Oeuvre) sessionFactory.getCurrentSession().merge(detachedInstance);
			logger.log(Level.INFO, "merge successful");
			return result;
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "merge failed", re);
			throw re;
		}
	}

	public Oeuvre findById(int id) {
		logger.log(Level.INFO, "getting Oeuvre instance with id: " + id);
		try {
			Oeuvre instance = (Oeuvre) sessionFactory.getCurrentSession().get("fr.cesi.atlantismedia.dao.Oeuvre", id);
			if (instance == null) {
				logger.log(Level.INFO, "get successful, no instance found");
			} else {
				logger.log(Level.INFO, "get successful, instance found");
			}
			return instance;
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "get failed", re);
			throw re;
		}
	}

	public List findByExample(Oeuvre instance) {
		logger.log(Level.INFO, "finding Oeuvre instance by example");
		try {
			List results = sessionFactory.getCurrentSession().createCriteria("fr.cesi.atlantismedia.dao.Oeuvre")
					.add(Example.create(instance)).list();
			logger.log(Level.INFO, "find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "find by example failed", re);
			throw re;
		}
	}
}
