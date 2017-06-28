package cn.edu360;

import java.math.BigDecimal;

/*
 * 因为在java中直接用float和double类型的值进行计算的时候，会有精度损失
 * 所以java为了精度的准确性就提供了BigDecimal这个类
 * 
 */
public class BigDecimalDemo {
	public static void main(String[] args) {
		System.out.println(0.09 + 0.01);//理论值：0.1		实际值：0.09999999999999999
		System.out.println(1.0 - 0.32);//理论值：0.68		实际值：0.6799999999999999
		System.out.println(1.015 * 100);//理论值：101.5	实际值：101.49999999999999
		System.out.println(1.301 / 100);//理论值：0.01301	实际值：0.013009999999999999
		
		//new BigDecimal(0.09);这个传入的值具有不可预知性，这个不用
		BigDecimal bd = new BigDecimal("0.09");
		BigDecimal bd2 = new BigDecimal("0.01");
		
		//public BigDecimal add(BigDecimal augend)加法
		System.out.println(bd.add(bd2));//0.10
		
		//public BigDecimal subtract(BigDecimal subtrahend)减法
		bd = new BigDecimal("1.0");
		bd2 = new BigDecimal("0.32");
		System.out.println(bd.subtract(bd2));//0.68
		
		//public BigDecimal multiply(BigDecimal multiplicand)乘法
		bd = new BigDecimal("1.015");
		bd2 = new BigDecimal("100");
		System.out.println(bd.multiply(bd2));//101.500
		
		//public BigDecimal divide(BigDecimal divisor)除法
		bd = new BigDecimal("1.341");
		System.out.println(bd.divide(bd2));//0.01301
		
		//public BigDecimal divide(BigDecimal divisor, int scale,int roundingMode)
		System.out.println(bd.divide(bd2, 3, BigDecimal.ROUND_HALF_UP));//0.013
		
		//public String toString()此 BigDecimal 的字符串表示形式
	}
}