import java.util.Scanner;

public class Lab03a1 {

    public static void main(String[] args){
        int math,math1;
        int english,english1;
        int science,science1;
        float DTB,DTB1;
        int sum,sum1;

        Scanner in = new Scanner(System.in);
        System.out.print("Diem mon Toan cua Quan la: ");
        math = in.nextInt();
        System.out.print("Diem mon Anh cua Quan la: ");
        english = in.nextInt();
        System.out.print("Diem mon Khoa hoc cua Quan la: ");
        science = in.nextInt();

        System.out.print("Diem mon Toan cua Lam la: ");
        math1 = in.nextInt();
        System.out.print("Diem mon Anh cua Lam la: ");
        english1 = in.nextInt();
        System.out.print("Diem mon Khoa hoc cua Lam la: ");
        science1 = in.nextInt();

        sum = (math + english + science);
        DTB = (float) sum/30*100;
        System.out.println("Percentage 3 mon cua Quan la: " + DTB +"%");


        sum1 = (math1 + english1 + science1);
        DTB1 = (float) sum1/30*100;
        System.out.println("Percentage 3 mon cua Lam la: " + DTB +"%");


        if(DTB>75){
            System.out.println("Quan duoc hoc bong 2000$");
        }else if(DTB<=75 && DTB>=60){
            System.out.println("Quan duoc hoc bong 1000$");
        }else {
            System.out.println("Quan ko duoc hoc bong");
        }
        if(DTB1>75){
            System.out.println("Lam duoc hoc bong 2000$");
        }else if(DTB1<=75 && DTB1>=60){
            System.out.println("Lam duoc hoc bong 1000$");
        }else {
            System.out.println("Lam ko duoc hoc bong");
        }
        in.close();

    }
}
