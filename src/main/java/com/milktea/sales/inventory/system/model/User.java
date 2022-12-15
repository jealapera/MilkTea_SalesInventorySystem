package com.milktea.sales.inventory.system.model;

public class User {
    private int id;
    private String role;
    private String username;
    private String password;
    private String email_address;
    private String full_name;

    public void setId(int id) {
        this.id = id;
    }
    public int getId() { return this.id; }

    public void setRole(String role) {
        this.role = role;
    }

    public String getRole() {
        return this.role;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    public String getUsername() {
        return this.username;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String getPassword() {
        return this.password;
    }

    public void setEmail_address(String email_address) {
        this.email_address = email_address;
    }
    public String getEmail_address() {
        return this.email_address;
    }

    public void setFull_name(String password) {
        this.full_name = full_name;
    }
    public String getFull_name() {
        return this.full_name;
    }
}