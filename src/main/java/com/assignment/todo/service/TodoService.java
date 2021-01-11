package com.assignment.todo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assignment.todo.model.TodoTask;
import com.assignment.todo.repository.TodoTaskRepo;

@Service
public class TodoService {

	@Autowired
	TodoTaskRepo todoTaskrepo;

	public List<TodoTask> findByUserName(String name) {
		return todoTaskrepo.findByUserName(name);
	}

	public void save(TodoTask todo) {
		// TODO Auto-generated method stub
		todoTaskrepo.save(todo);
	}

	public Optional<TodoTask> findById(long id) {
		// TODO Auto-generated method stub
		return todoTaskrepo.findById(id);
	}

	public void deleteById(long id) {
		// TODO Auto-generated method stub
		todoTaskrepo.deleteById(id);
	}
}
