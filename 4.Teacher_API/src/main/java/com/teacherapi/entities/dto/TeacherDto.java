package com.teacherapi.entities.dto;

import com.teacherapi.entities.Teacher;


public class TeacherDto {
    private final Teacher teacher;

    public TeacherDto(Teacher teacher) {
        this.teacher = teacher;
    }

    public Long getId() {
        return teacher.getId();
    }

    public String getEmail() {
        return teacher.getEmail();
    }
    public String getFirstName() {
        return teacher.getFirstName();
    }

    public String getLastName() {
        return teacher.getLastName();
    }



}
