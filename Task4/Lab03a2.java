import java.util.Scanner;

public class Lab03a2 {

    public static void main(String[] args) {
        double Item, Quantity, Price, TotalS, TotalT, a, b,NetTotals;

        Scanner in = new Scanner(System.in);
        System.out.println("Enter the number of Shirts to order: ");
        a = in.nextDouble();
        System.out.println("Enter the number of Trousers to order: ");
        b = in.nextDouble();
//line1
        System.out.print("Item ");
        System.out.print("     Quantity ");
        System.out.print("Price ");
        System.out.println("Total");
        System.out.println("------------------------------------");
//line2
        System.out.print("Shirts    ");
        System.out.print(a);
        System.out.print(" 300 ");
        TotalS = a * 300;
        System.out.println(TotalS);
        System.out.println("------------------------------------");
//line3
        System.out.print("Trousers ");
        System.out.print(b);
        System.out.print(" 700 ");
        TotalT = b * 700;
        System.out.println(TotalT);
        System.out.println("------------------------------------");
//Line4
        NetTotals=a+b;
    if (NetTotals>5000) {
            System.out.print("Discount ");
            System.out.print("    ");
            System.out.print("    ");
            System.out.print(NetTotals/10);
            System.out.println("------------------------------------");
    }else if(NetTotals>=3000 && NetTotals<=5000){
        System.out.print("Discount");
        System.out.print("   ");
        System.out.print("   ");
        System.out.print(NetTotals*5/100);
        System.out.println("------------------------------------");
    }else{
        System.out.print("Discount");
        System.out.print("   ");
        System.out.print("   ");
        System.out.print(NetTotals*0);
        System.out.println("------------------------------------");
    }

    }
}
