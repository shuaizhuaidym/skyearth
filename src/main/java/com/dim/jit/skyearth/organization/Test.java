package com.dim.jit.skyearth.organization;

public class Test {
	private final static char[] mChars = "0123456789ABCDEF".toCharArray();
//	private final static String mHexStr = "0123456789ABCDEF";
	
	public static void main(String[] args) {
		System.out.println(str2HexStr("App-Flag="));
	}

	/**
	 * 字符串转换成十六进制字符串
	 * 
	 * @param str
	 *            String 待转换的ASCII字符串
	 * @return String 每个Byte之间空格分隔，如: [61 6C 6B]
	 */
	public static String str2HexStr(String str) {
		StringBuilder sb = new StringBuilder();
		byte[] bs = str.getBytes();

		for (int i = 0; i < bs.length; i++) {
			sb.append(mChars[(bs[i] & 0xFF) >> 4]);
			sb.append(mChars[bs[i] & 0x0F]);
			sb.append(' ');
		}
		return sb.toString().trim();
	}

}
