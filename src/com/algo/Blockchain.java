package com.algo;

import java.util.ArrayList;

public class Blockchain {
	MD5 md5obj = new MD5();
	String Genesis = "GenesisBlock";
	String HashGenesis = md5obj.generate(Genesis);
	String prevHash = HashGenesis;
	ArrayList blockchain = new ArrayList<>();
	
	public void blockchain(String hashvalue) {
		String newHash = prevHash + hashvalue;
		blockchain.add(newHash);
		System.out.println(newHash);
		prevHash=newHash;
	}
}
