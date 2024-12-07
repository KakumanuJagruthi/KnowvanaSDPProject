package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Educator;

@Repository
public interface EducatorRepository extends JpaRepository<Educator, String>
{
	@Query("select e from Educator e where e.username=?1 and e.password=?2 ")
	public Educator checkeducatorlogin(String uname,String pwd);
	Educator findByUsername(String username);
}
