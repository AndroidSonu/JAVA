/**
 * 
 */
package com.cg.ta.service;

import java.util.List;

import com.cg.ta.bean.Trainee;

/**
 * @author anurag
 *
 */
public interface ITraineeService {
	public boolean add(Trainee trainee);
	public boolean delete(int id);
	public boolean modify(Trainee trainee);
	public List<Trainee> retreiveAll();
	public Trainee retreiveOne(int id);
}
