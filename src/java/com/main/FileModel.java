/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main;

/**
 *
 * @author hp
 */
public class FileModel {

    private int id;
    private String title;
    private String semester;
    private String subject;
    private String fileName;
    private String branch;

    // Constructor
    public FileModel(int id, String title, String semester, String subject, String fileName, String branch) {
        this.id = id;
        this.title = title;
        this.semester = semester;
        this.subject = subject;
        this.fileName = fileName;
        this.branch = branch;
    }

    // Getters
    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getSemester() {
        return semester;
    }

    public String getSubject() {
        return subject;
    }

    public String getFileName() {
        return fileName;
    }
    
    public String getBranch(){
        return branch;
    }
}


