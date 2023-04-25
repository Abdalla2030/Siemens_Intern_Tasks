package com.teacherapi.entities.mappers;

import com.teacherapi.entities.Teacher;
import com.teacherapi.entities.dto.AddTeacherDto;
import com.teacherapi.entities.dto.TeacherDto;

public class TeacherMapperImpl implements TeacherMapper {
    @Override // post
    public Teacher addTeacherDtoToTeacher(AddTeacherDto addTeacherDto) {
       Teacher teacher = new Teacher();
        teacher.setEmail(addTeacherDto.getEmail());
        teacher.setPassword(addTeacherDto.getPassword());
        teacher.setFirstName(addTeacherDto.getFirstName());
        teacher.setLastName(addTeacherDto.getLastName());
        return teacher;
    }

    @Override
    public TeacherDto teacherToTeacherDto(Teacher teacher) {
        return  new TeacherDto(teacher);
    }
}
