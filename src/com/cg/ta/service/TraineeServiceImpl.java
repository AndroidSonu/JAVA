/**
 * 
 */
package com.cg.ta.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.ta.bean.Trainee;
import com.cg.ta.dao.ITraineeDao;

/**
 * @author anurag
 *
 */
@Service
public class TraineeServiceImpl implements ITraineeService{

	@Autowired
	ITraineeDao dao;
	
	@Override
	public boolean add(Trainee trainee) {
		return dao.add(trainee);
	}

	@Override
	public boolean delete(int id) {
		return dao.delete(id);
	}

	@Override
	public boolean modify(Trainee trainee) {
		return dao.modify(trainee);
	}

	@Override
	public List<Trainee> retreiveAll() {
		return dao.retreiveAll();
	}

	@Override
	public Trainee retreiveOne(int id) {
		return dao.retreiveOne(id);
	}
	
}
