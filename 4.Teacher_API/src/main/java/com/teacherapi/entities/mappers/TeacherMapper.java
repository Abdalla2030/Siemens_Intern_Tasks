package com.teacherapi.entities.mappers;

import com.teacherapi.entities.Teacher;
import com.teacherapi.entities.dto.AddTeacherDto;
import com.teacherapi.entities.dto.TeacherDto;

public interface TeacherMapper {

    Teacher addTeacherDtoToTeacher(AddTeacherDto addTeacherDto);
    TeacherDto teacherToTeacherDto(Teacher teacher);
}
