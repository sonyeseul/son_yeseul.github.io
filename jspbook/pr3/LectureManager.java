package jspbook.pr3;

import java.util.*;

public class LectureManager {
	
   private static final int times = 6;
   private static final int days = 5;
   
   private int[][] typeMatrix = new int[times][days];
   private int[][] titleMatrix = new int[times][days];
   private int[][] spanMatrix = new int[times][days];
   
	public LectureManager() {
		for(int i = 0; i< times; i++) { 
			for(int j = 0; j<days; j++) {
				typeMatrix[i][j] = 0;
			 	titleMatrix[i][j] = -1;
				spanMatrix[i][j] = 1;
			}
		}
	}

   
	public int[][] getTypeMatrix() {
	return typeMatrix;
}

public void setTypeMatrix(int[][] typeMatrix) {
	this.typeMatrix = typeMatrix;
}

public int[][] getTitleMatrix() {
	return titleMatrix;
}

public void setTitleMatrix(int[][] titleMatrix) {
	this.titleMatrix = titleMatrix;
}

public int[][] getSpanMatrix() {
	return spanMatrix;
}

public void setSpanMatrix(int[][] spanMatrix) {
	this.spanMatrix = spanMatrix;
}

	ArrayList<LectureBean> lectureList= new ArrayList<LectureBean>();

	public ArrayList<LectureBean> getLectureList() {
		return lectureList;
	}

	public void add(LectureBean lbean) {
		lectureList.add(lbean);
	}

public  void buildMatrix()
{
	   for(LectureBean lb2: lectureList) {
		   	typeMatrix[lb2.getTime()-1][lb2.getDay()] = lb2.getType()+1;
		   	titleMatrix[lb2.getTime()-1][lb2.getDay()] = lb2.getTitle();
	          spanMatrix[lb2.getTime()-1][lb2.getDay()] = lb2.getConsecutive();
	          for (int i = 0; i < lb2.getConsecutive()-1; i++) {
	             spanMatrix[lb2.getTime()+i][lb2.getDay()] = 0;
	          }
	   }
   }            

public static void printMatrix(int[][] matrix)
{
  for(int i = 0; i<times; i++) {
 	 for(int j =0; j<days; j++)
 		 System.out.printf(matrix[i][j]+" ");
 	 System.out.printf("");
  }
}
}