public class RunningNumberMod7Sum {
    public static void main(String[] args){
        int a = 7;
        int b = 1000;
        int sum = 0;
        while (a <= b){
            sum = sum + a;
            a = a + 7;
        }
        System.out.println(sum);
    }
}
