package com.ckp.controller;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;

public class Encryptor {
	
	private static MessageDigest digest;
	
	public static String encryptMessageMD5(String message) {
		try {
			digest = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException nsae) {
			//pass
		}
		String encrypted = null;
		digest.update(message.getBytes(), 0, message.length());
		encrypted = new BigInteger(1,digest.digest()).toString(16);
		return encrypted;
	}
	
	public static String encryptMessageSHA1(String message) {
		try {
			digest = MessageDigest.getInstance("SHA-1");
		} catch (NoSuchAlgorithmException nsae) {
			//pass
		}
		return byteArrayToHex(digest.digest(message.getBytes()));
	}

	private static String byteArrayToHex(final byte[] hash) {
			Formatter formatter = new Formatter();
			for (byte b : hash) {
				formatter.format("%02x",b);
			}
			formatter.close();
			return formatter.toString();
	}
}
