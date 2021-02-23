public class RunningNumberOddSum {

    public static void main(String[] args){
        int a = 1;
        int b = 1000;
        int sum = 0;
        while (a <= b){
            sum = sum + a;
            a = a + 2;
        }
        System.out.println(sum);
    }
}
