public class Bank {

    private double balance,rate;

    public Bank(double balance, double rate) {
        this.balance = balance;
        this.rate = rate;
    }

    public double caculateInterest() {
        return balance * (rate/1200);
    }

}
