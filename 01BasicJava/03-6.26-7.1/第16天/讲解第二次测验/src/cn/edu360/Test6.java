package cn.edu360;

import java.util.Arrays;
import java.util.Scanner;

/*
 * 6.有一个已经排好序的数组。现输入一个数，要求按原来的规律将它插入数组中   
	int[] arr = { 1, 5, 13, 15, 20, 88, 99, 101 };
	int[] arr = { 101, 99, 88, 20, 15, 13, 5, 1 };
 */
public class Test6 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入要插入的元素值：");
		int n = sc.nextInt();
		// int[] arr = { 1, 5, 13, 15, 20, 88, 99, 101 };
		int[] arr = { 101, 99, 88, 20, 15, 13, 5, 1 };
		// 新建一个数组，这个数组的长度比原数组大一个
		int[] temp = new int[arr.length + 1];
		// 表示要插入到数组中的元素还没有被插入
		boolean flag = true;
		for (int i = 0, j = 0; i < arr.length; i++, j++) {// i表示arr的索引，j表示temp的索引
			if (arr[0] < arr[arr.length-1]) {//升序
				// 先拿n和数组中最小的值进行比较，如果发现n比当前值小的话就在当前位置插入n，当前元素值就向后移动一位
				// 判断当前的n是否被插入到数组中了
				if (n < arr[i] && flag) {
					// n如果已经被插入了，就将值flag改成false
					flag = false;
					temp[j] = n;
					j++;//temp中的元素位置位置向后移一位
				}
			}else{//降序
				//先拿n和数组中最大的值进行比较，如果发现n比当前最大值大的话就帮n插入到当前的位置,，当前元素值就向后移动一位
				if(n>arr[i] && flag){
					// n如果已经被插入了，就将值flag改成false
					flag = false;
					temp[j] = n;
					j++;//temp中的元素位置位置向后移一位
				}
			}
			temp[j] = arr[i];
		}
		//如果是升序： 如果flag为true的话，表明n大于原数组所有的元素，那么n应该被插入到最后一个位置
		//如果是降序：如果flag为true的话，表明n小于原数组所有的元素，那么n应该被插入到最后一个位置
		if (flag) {
			temp[temp.length - 1] = n;
		}
		System.out.println(Arrays.toString(temp));
	}
}
