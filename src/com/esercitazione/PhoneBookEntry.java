package com.esercitazione;

public class PhoneBookEntry {
    private String name, surname, phone;

    public PhoneBookEntry (String n, String s, String p) {
        this.name = n;
        this.surname = s;
        this.phone = p;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public String getPhone() {
        return phone;
    }
}

