public class PrintLeapYear {

    public static void main(String[] args){
        int a = 999;
        int b = 2010;
        int count = 0;

        while (a <= b){
            if(((a%4 == 0) && (a%100!=0))||(a%4 == 0)){
                count += a;
            }
            a++;
        }
        System.out.println(count);
    }
}
