public class TestBank {
    public static void main(String[] args) {
        Bank b1 = new Bank(10000.00, 9.5);
        System.out.println(b1.caculateInterest());
    }
}