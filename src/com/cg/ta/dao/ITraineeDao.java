/**
 * 
 */
package com.cg.ta.dao;

import java.util.List;

import com.cg.ta.bean.Trainee;

/**
 * @author anurag
 *
 */
public interface ITraineeDao {
	public boolean add(Trainee trainee);
	public boolean delete(int id);
	public boolean modify(Trainee trainee);
	public List<Trainee> retreiveAll();
	public Trainee retreiveOne(int id);
}
