/**
 * 
 */
package com.cg.ta.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cg.ta.bean.Trainee;
import com.cg.ta.service.ITraineeService;

/**
 * @author anurag
 *
 */

@Controller
public class TraineeController {
	@Autowired
	ITraineeService service;
	
	@RequestMapping(value="/login" , method=RequestMethod.POST)
	public ModelAndView onSubmit(@RequestParam("username") String username,@RequestParam("password") String password)
	{
		if(username.equals("capgemini") && password.equals("capgemini12"))
			{
			return new ModelAndView("index");
			}
		else
			{return new ModelAndView("failure");
			}
	}
	
	@RequestMapping("/index")
	public ModelAndView indexPage(){
		
		ModelAndView modelAndView = new ModelAndView("index");
		return modelAndView;
	}
	
	@RequestMapping("/add")
	public ModelAndView entryForm(){
		ModelAndView modelAndView = new ModelAndView("addTrainee");
		return modelAndView;
	}
	
	@RequestMapping(value="/addNow",method=RequestMethod.POST)
	public ModelAndView addTrainee(@ModelAttribute("trainee") Trainee trainee){
		System.out.println("Hello");
		boolean status = service.add(trainee);
		if(status == true){
			ModelAndView modelAndView = new ModelAndView("successful");	
			modelAndView.addObject("msg", "Trainee Details Added Successfully");
			return modelAndView;
		}
		else{
			ModelAndView modelAndView = new ModelAndView("Error");		
			modelAndView.addObject("msg", "Trainee Details could not be added");
			return modelAndView;
		}
		
	}
	@RequestMapping("/delete")
	public ModelAndView delete(){
		Trainee trainee = new Trainee();
		
		ModelAndView modelAndView = new ModelAndView("deleteTrainee");
		modelAndView.addObject("trainee",trainee);
		modelAndView.addObject("isFirst", "true");
		return modelAndView;
	}
	
	@RequestMapping("/deleteNow")
	public ModelAndView deleteForm(@RequestParam("traineeId") int id){
		Trainee trainee = service.retreiveOne(id);
		if(trainee == null){
			ModelAndView modelAndView = new ModelAndView("Error");
			modelAndView.addObject("msg", "No Records Found .Please enter a valid trainee id.");
			return modelAndView;
		}
		else{
			
		ModelAndView modelAndView = new ModelAndView("deleteTrainee");
		modelAndView.addObject("trainee",trainee);
		modelAndView.addObject("isFirst", "false");
		return modelAndView;
		}
	}
	
	@RequestMapping("/deleteFinally")
	public ModelAndView deleteTrainee(@ModelAttribute("trainee") Trainee trainee){
		
		boolean status = service.delete(trainee.getTraineeId());
		if(status == true){
			List<Trainee> traineeList = service.retreiveAll();
			if(traineeList.isEmpty()){
				ModelAndView modelAndView = new ModelAndView("Error");
				modelAndView.addObject("msg", "No Records Found");
				return modelAndView;
			}
			else{
				ModelAndView modelAndView = new ModelAndView("successful");	
				modelAndView.addObject("msg", "Trainee Details deleted Successfully");
				return modelAndView;
			}
		}
		else{
			ModelAndView modelAndView = new ModelAndView("Error");		
			modelAndView.addObject("msg", "Trainee Details could not be deleted");
			return modelAndView;
		}
		
	}
	
	@RequestMapping("/modify")
	public ModelAndView update(){
		
		Trainee trainee = new Trainee();
		
		ModelAndView modelAndView = new ModelAndView("updateTrainee");
		modelAndView.addObject("trainee",trainee);
		modelAndView.addObject("isFirst", "true");
		return modelAndView;
	}
	
	@RequestMapping("/modifyNow")
	public ModelAndView updateForm(@RequestParam("traineeId") int id){
		Trainee trainee = service.retreiveOne(id);
		if(trainee == null){
			ModelAndView modelAndView = new ModelAndView("Error");
			modelAndView.addObject("msg", "No Records Found .Please enter a valid trainee id.");
			return modelAndView;
		}
		else
		{
		ModelAndView modelAndView = new ModelAndView("updateTrainee");
		modelAndView.addObject("trainee",trainee);
		modelAndView.addObject("isFirst", "false");
		return modelAndView;
		}
	}
	
	@RequestMapping(value="/modifyFinally",method=RequestMethod.POST)
	public ModelAndView updateEmployee(@ModelAttribute("trainee") Trainee trainee){
		
		boolean status = service.modify(trainee);
		if(status == true){
			ModelAndView modelAndView = new ModelAndView("successful");	
			modelAndView.addObject("msg", "Trainee Details Updated Successfully");
			return modelAndView;
		}
		else{
			ModelAndView modelAndView = new ModelAndView("Error");		
			modelAndView.addObject("msg", "Trainee Details could not be updated");
			return modelAndView;
		}
		
	}
	
	@RequestMapping("/retrieveAll")
	public ModelAndView viewAllTrainee(){
		
		List<Trainee> traineeList = service.retreiveAll();
		if(traineeList.isEmpty()){
			ModelAndView modelAndView = new ModelAndView("Error");
			modelAndView.addObject("msg", "No Trainee Records Found");
			return modelAndView;
		}
		else{
			ModelAndView modelAndView = new ModelAndView("ViewAllTrainee");
			modelAndView.addObject("list", traineeList);
			return modelAndView;
		}		
	}
	
	@RequestMapping("/retrieveOne")
	public ModelAndView retreive(){
		
		Trainee trainee = new Trainee();
		
		ModelAndView modelAndView = new ModelAndView("viewOneTrainee");
		modelAndView.addObject("trainee",trainee);
		modelAndView.addObject("isFirst", "true");
		return modelAndView;
	}
	
	@RequestMapping("/retrieveOneFinal")
	public ModelAndView retreiveFinal(@RequestParam("traineeId") int id){
		Trainee trainee = service.retreiveOne(id);
		if(trainee == null){
			ModelAndView modelAndView = new ModelAndView("Error");
			modelAndView.addObject("msg", "No Records Found .Please enter a valid trainee id.");
			return modelAndView;
		}
		else
		{
		ModelAndView modelAndView = new ModelAndView("viewOneTrainee");
		modelAndView.addObject("trainee",trainee);
		modelAndView.addObject("isFirst", "false");
		return modelAndView;
		}
	}
}
