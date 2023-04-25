package com.teacherapi.services.impl;

import com.teacherapi.entities.Teacher;
import com.teacherapi.entities.dto.AddTeacherDto;
import com.teacherapi.entities.dto.TeacherDto;
import com.teacherapi.entities.mappers.TeacherMapper;
import com.teacherapi.entities.mappers.TeacherMapperImpl;
import com.teacherapi.errors.TeacherNotFoundException;
import com.teacherapi.repositories.TeacherRepository;
import com.teacherapi.services.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class TeacherServiceImpl implements TeacherService {
    private final TeacherRepository teacherRepository;
    private static final TeacherMapper mapper = (TeacherMapper) new TeacherMapperImpl();
    @Autowired
    public TeacherServiceImpl(TeacherRepository teacherRepository) {
        this.teacherRepository = teacherRepository;
    }


    @Override
    public ResponseEntity<List<TeacherDto>> findAll() {
        List <Teacher> teachers = this.teacherRepository.findAll();
        List <TeacherDto> teacherDtoList = teachers.stream().map(mapper::teacherToTeacherDto).collect(Collectors.toList());
        return new ResponseEntity<>(teacherDtoList, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<TeacherDto> findById(Long id) {
       Optional<Teacher> teacher =  this.teacherRepository.findById(id);
       if(!teacher.isPresent()){ ///////return !request.isPresent();
           throw new TeacherNotFoundException("The Teacher with ID = "+id+" Not Found !!");
       }
        TeacherDto teacherDto = mapper.teacherToTeacherDto(teacher.get());
        return new ResponseEntity<>(teacherDto,HttpStatus.OK);
    }

    @Override
    public ResponseEntity<TeacherDto> findByMail(String mail) {
        Optional<Teacher> teacher = Optional.ofNullable(this.teacherRepository.findByMail(mail));
       if(!teacher.isPresent()){ ///////return !request.isPresent();
           throw new TeacherNotFoundException("The Teacher with Mail = "+mail+" Not Found !!");
       }
        TeacherDto teacherDto = mapper.teacherToTeacherDto(teacher.get());
        return new ResponseEntity<>(teacherDto,HttpStatus.OK);
    }

    @Override
    public ResponseEntity<TeacherDto> create(AddTeacherDto addTeacherDto){
        final Teacher teacher = mapper.addTeacherDtoToTeacher(addTeacherDto);
        final Teacher createdTeacher = this.teacherRepository.save(teacher);
        TeacherDto teacherDto = mapper.teacherToTeacherDto(teacher);
        return new ResponseEntity<>(teacherDto, HttpStatus.CREATED);
    }

    @Override
    public ResponseEntity<TeacherDto> update(Long id, AddTeacherDto newTeacherDto){
        Optional<Teacher> teacher = this.teacherRepository.findById(id);
        if (!teacher.isPresent()) {
            throw new TeacherNotFoundException("The Teacher with Id = "+id+" Not Found !!");
        }
        Teacher existingTeacher = teacher.get();
        existingTeacher.setEmail(newTeacherDto.getEmail());
        existingTeacher.setPassword(newTeacherDto.getPassword());
        existingTeacher.setFirstName(newTeacherDto.getFirstName());
        existingTeacher.setLastName(newTeacherDto.getLastName());

        Teacher updatedTeacher = this.teacherRepository.save(existingTeacher);
        TeacherDto teacherDto = mapper.teacherToTeacherDto(updatedTeacher);
        return new ResponseEntity<>(teacherDto,HttpStatus.OK);
    }

   @Override
    public ResponseEntity<String> delete(Long id) {
       boolean exists =  this.teacherRepository.existsById(id);
       if(!exists){
           throw new TeacherNotFoundException("The Teacher with Id = "+id+" Not Found !!");
       }
       this.teacherRepository.deleteById(id);
       return new ResponseEntity<>("Teacher has been removed successfully !!",HttpStatus.NO_CONTENT);
    }

    @Override
    public ResponseEntity<List<TeacherDto>> findTeacherByFirstNameAndLastName(String fName, String lName) {
        List <Teacher> teachers = this.teacherRepository.findTeacherByFirstNameAndLastName("a","a");
        List <TeacherDto> teacherDtoList = teachers.stream().map(mapper::teacherToTeacherDto).collect(Collectors.toList());
        return new ResponseEntity<>(teacherDtoList, HttpStatus.OK);
    }
}
