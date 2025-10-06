package com.example.web;
import java.util.HashMap;
import java.util.Map;

public class UserStore {
    private static final Map<String, String[]> users = new HashMap<>();

    public static void addUser(String name, String email, String password) {
        users.put(email, new String[]{name, password});
    }

    public static String[] getUser(String email) {
        return users.get(email);
    }

    public static boolean validate(String email, String password) {
        String[] data = users.get(email);
        return data != null && data[1].equals(password);
    }
}