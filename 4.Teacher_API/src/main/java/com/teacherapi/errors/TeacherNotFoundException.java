package com.teacherapi.errors;

public class TeacherNotFoundException extends RuntimeException{

    public TeacherNotFoundException(String message){
        super(message);
    }
}
