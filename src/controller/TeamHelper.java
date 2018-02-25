package controller;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import model.Team;

public class TeamHelper {
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("BowlingLeagueChongo");
	
	public void insert(Team toAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(toAdd);
		em.getTransaction().commit();
		em.close();
	}

	public Team searchForTeamById(int teamID) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		Team foundItem = em.find(Team.class, teamID);
		em.close();
		return foundItem;
	}
}
