package controller;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import model.Player;

public class PlayerHelper {
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("BowlingLeagueChongo");
	
	public void insert(Player toAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(toAdd);
		em.getTransaction().commit();
		em.close();
	}
}
