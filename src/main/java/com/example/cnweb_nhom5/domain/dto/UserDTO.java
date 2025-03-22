package com.example.cnweb_nhom5.domain.dto;

import com.example.cnweb_nhom5.service.validator.StrongPassword;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

public class UserDTO {

    @NotNull(message = "Email không được để trống")
    private String email;

    @StrongPassword
    private String password;

    @NotNull(message = "Họ tên không được để trống")
    @Size(min = 3, message = "Fullname phải có tối thiểu 3 ký tự")
    private String fullName;

    @NotNull(message = "Địa chỉ không được để trống")
    @Size(min = 3, message = " phải có tối thiểu 3 ký tự")
    private String address;

    @NotNull(message = "SDT không được để trống")
    @Size(min = 10, message = " phải có tối thiểu 10 ký tự")
    private String phone;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    // Getters và Setters

}
