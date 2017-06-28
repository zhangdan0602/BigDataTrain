package cn.edu360;

/*
 * 基本类型包装类可以提供引用类型和基本类型之间转换的很多方法
 * 每一个基本数据类型都有它对应的包装类
 * byte		Byte
 * char 	Character
 * short 	Short
 * int		Integer
 * long 	Long
 * float	Float
 * double 	Double
 * boolean 	Boolean
 * 
 * Integer：Integer 类在对象中包装了一个基本类型 int 的值
 * 	Integer最常用的场景：int-String之间做转换
 */
public class IntegerDemo {
	public static void main(String[] args) {
		// public Integer(int value)构造一个新分配的 Integer 对象，它表示指定的 int 值
		Integer integer = new Integer(123);// 在1.5之前必须这么创建
		integer = 123;// 在JDK1.5之后出现的新特性：自动装箱
		int n = integer;// 在JDK1.5之后出现的新特性：自动拆箱

		String s = "123";
		// public static int parseInt(String s)将字符串参数作为有符号的十进制整数进行解析
		int i = Integer.parseInt(s);
		i = new Integer(s);

		// public static String toString(int i)返回一个表示指定整数的 String 对象
		// System.out.println(i+"");
		System.out.println(Integer.toString(i));
	}
}