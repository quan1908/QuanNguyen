public class ThreeFiveSevenSum {

    public static void main(String[] args) {
        int a = 1;
        int b = 1000;
        int sum = 0;
        while (a <= b) {
            if ((a % 3 == 0) && (a % 5 == 0) && (a % 7 == 0) && !((a % 15 != 0) && (a % 21 == 0) && (a % 35 == 0) && (a % 105 == 0))) {
                sum += a;

            }

            ++a;
        }
        System.out.println(sum);
    }
}
