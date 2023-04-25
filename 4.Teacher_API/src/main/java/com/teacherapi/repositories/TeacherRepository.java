package com.teacherapi.repositories;

import com.teacherapi.entities.Teacher;
import com.teacherapi.entities.dto.TeacherDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeacherRepository extends JpaRepository <Teacher,Long>{
  public Teacher findByMail(String mail);
  public List<Teacher>findTeacherByFirstNameAndLastName(String fName, String lName);

}

