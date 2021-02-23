public class RunningNumberProduct {

    public static void main(String[] args){
        int a = 1;
        int b = 10;
        int sum = 1;
        while (a <= b){
            sum = sum * a;
            ++a;
        }
        System.out.println(sum);
    }
}
