package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.Student;

import jakarta.transaction.Transactional;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer>
{
	@Query("select s from Student s where s.username=?1 and s.password=?2 ")
	public Student checkstudlogin(String username,String pwd);
	
	@Query("update Student s set s.status=?1 where s.id=?2 ")
	@Modifying //DML
	@Transactional //auto commit
	public int updatestudstatus(String status, int sid);
	
	//reference
		@Query("delete from Student s where s.id=?1")
		@Modifying //DML
		@Transactional //auto commit
		public int deletestudbyid(int sid);
}
