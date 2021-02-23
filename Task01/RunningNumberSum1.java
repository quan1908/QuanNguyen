public class RunningNumberSum1 {

    public static void main(String[] args){
        int a = 9;
        int b = 899;
        int sum = 0;
        while (a <= b){
            sum = sum + a;
            ++a;
        }
        System.out.println(sum);
    }
}
