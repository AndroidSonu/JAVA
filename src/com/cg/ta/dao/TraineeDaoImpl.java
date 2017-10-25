/**
 * 
 */
package com.cg.ta.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cg.ta.bean.Trainee;

/**
 * @author anurag
 *
 */

@Repository
@Transactional
public class TraineeDaoImpl implements ITraineeDao{
	
	@PersistenceContext
	EntityManager entityManager;

	@Override
	public boolean add(Trainee trainee) {;
		entityManager.persist(trainee);
		entityManager.flush();
		return true;
	}

	@Override
	public boolean delete(int id) {
		entityManager.remove(entityManager.find(Trainee.class, id));
		return true;
	}

	@Override
	public boolean modify(Trainee trainee) {
		entityManager.merge(trainee);
		return true;
	}

	@Override
	public List<Trainee> retreiveAll() {
		TypedQuery<Trainee> query = entityManager.createQuery("from Trainee", Trainee.class);
		return query.getResultList();
	}

	@Override
	public Trainee retreiveOne(int id) {
		return entityManager.find(Trainee.class, id);
	}
	
}
