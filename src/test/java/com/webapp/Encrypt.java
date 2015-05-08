package com.webapp;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Encrypt {
	
	public static void main(String[] args) throws NoSuchAlgorithmException {
		System.out.println(encrypt("1234"));
		System.out.println(encrypt("abcd1234"));
		System.out.println(encrypt("1234"));
	}

    public static String encrypt(String str) throws NoSuchAlgorithmException {

        String encData = "";
        
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes();
            md.update(bytes);
            byte[] digest = md.digest();

            for(int i=0; i<digest.length; i++ ) {
                encData += Integer.toHexString(digest[i]&0xff);
            }

        } catch (NoSuchAlgorithmException e) {
            // TODO: handle exception
            e.printStackTrace();
            throw e;
        }

        return encData; 
    }
}
