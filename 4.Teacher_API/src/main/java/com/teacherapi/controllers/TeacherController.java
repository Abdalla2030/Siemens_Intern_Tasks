package com.teacherapi.controllers;

import com.teacherapi.entities.dto.AddTeacherDto;
import com.teacherapi.entities.dto.TeacherDto;
import com.teacherapi.services.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path="/api/v1/teachers")
public class TeacherController {
   private final TeacherService teacherService;

    @Autowired
    public TeacherController(TeacherService teacherService) {
        this.teacherService = teacherService;
    }

    @GetMapping("")
    public ResponseEntity<List<TeacherDto>> getTeachers(){
        return this.teacherService.findAll();
    }

    @GetMapping("/{TeacherId}")
    public ResponseEntity<TeacherDto> getTeacherById(@RequestParam Long id){
        return this.teacherService.findById(id);
    }

    @GetMapping("/{TeacherMail}")
    public ResponseEntity<TeacherDto> getTeacherByMail(@RequestParam String mail){
        return this.teacherService.findByMail(mail);
    }

    @PostMapping()
    public ResponseEntity<TeacherDto> createTeacher(@RequestBody AddTeacherDto addTeacherDto){
        return  this.teacherService.create(addTeacherDto);
    }

    @PutMapping(path="{/TeacherId}")
    public ResponseEntity<TeacherDto> updateCourse(@PathVariable Long id,@RequestBody AddTeacherDto addTeacherDto){
        return this.teacherService.update(id,addTeacherDto);
    }

    @DeleteMapping(path="{/TeacherId}")
    public ResponseEntity<String> deleteCourse(@PathVariable Long id){
        return this.teacherService.delete(id);
    }

}
