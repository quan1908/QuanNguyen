public class RunningNumberSquareSum {

    public static void main(String[] args){
        int a = 1;
        int b = 100;
        int sum = 0;
        while (a <= b){
            sum = sum + a*a;
            ++a;
        }
        System.out.println(sum);
    }
}
