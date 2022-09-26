package com.demo.service;

import java.util.Optional;
import java.lang.Iterable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.jpa.entity.Skill;
import com.demo.jpa.repository.SkillRepository;
import java.util.*;

@Service
public class SkillService {

	@Autowired
	private SkillRepository skillRepository;
	
	public Optional<Skill> findByIdJpa(long id) {
		return skillRepository.findById(id);
	}
	
	public List<Skill> findAll() {
		return skillRepository.findAll();
	}
}
