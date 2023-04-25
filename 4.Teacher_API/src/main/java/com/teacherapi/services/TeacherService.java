package com.teacherapi.services;
import com.teacherapi.entities.dto.AddTeacherDto;
import com.teacherapi.entities.dto.TeacherDto;
import org.springframework.http.ResponseEntity;

import java.util.List;

public interface TeacherService {

    ResponseEntity<List<TeacherDto>>findAll();
    ResponseEntity<TeacherDto> findById(Long id);
    ResponseEntity<TeacherDto> findByMail(String mail);
     ResponseEntity<TeacherDto>create(AddTeacherDto addTeacherDto);
     ResponseEntity<TeacherDto>update(Long id,AddTeacherDto addTeacherDto);
    ResponseEntity<String>delete(Long id);
    ResponseEntity<List<TeacherDto>> findTeacherByFirstNameAndLastName(String fName, String lName);

}
