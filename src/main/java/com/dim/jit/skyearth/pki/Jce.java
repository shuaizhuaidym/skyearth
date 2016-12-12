package com.dim.jit.skyearth.pki;

import java.security.Provider;
import java.security.Security;

public class Jce {
	public static void main(String[] args) {
		if(Security.getProvider("BC")==null){
			Security.addProvider(new org.bouncycastle.jce.provider.
					BouncyCastleProvider());
		}
		Provider[] prdrs=Security.getProviders();
		for(Provider p:prdrs){
			System.out.println(p.getName());
			for(Provider.Service s:p.getServices()){
				System.out.println("\t"+s.getAlgorithm());
			}
		}
	}
}
