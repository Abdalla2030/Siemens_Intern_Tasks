package com.teacherapi.config;

import com.teacherapi.entities.Teacher;
import com.teacherapi.entities.dto.AddTeacherDto;
import com.teacherapi.entities.mappers.TeacherMapper;
import com.teacherapi.entities.mappers.TeacherMapperImpl;
import com.teacherapi.repositories.TeacherRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.stream.IntStream;

@Configuration
public class TeacherCommandLineRunner {
    @Bean
    CommandLineRunner initDatabase(TeacherRepository teacherRepository){
        return args->{
            TeacherMapper teacherMapper= new TeacherMapperImpl();
            IntStream.rangeClosed(1,10).forEach(i->{
                AddTeacherDto addTeacherDto = new AddTeacherDto
                        ("abdalla.fadle2001@gmail.com",
                        "Abdalla"+i,"Abdalla"+i,"Fadl"+i);
                Teacher teacher = teacherMapper.addTeacherDtoToTeacher(addTeacherDto);
                teacherRepository.save(teacher);
            });

        };
    }

}
