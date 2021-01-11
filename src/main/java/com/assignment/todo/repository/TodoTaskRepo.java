package com.assignment.todo.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.assignment.todo.model.TodoTask;

@Repository
public interface TodoTaskRepo extends JpaRepository<TodoTask, Long> {

	List<TodoTask> findAll();

	Optional<TodoTask> findById(Long id);

	List<TodoTask> findByUserName(String name);

}
