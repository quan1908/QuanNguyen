public class Math1 {

    public static void main(String[] args){
        int number1 = 98;
        int number2 = 5;
        int sum,difference,product,quotient,remainder;
        int x;

        sum = number1 + number2;
        difference = number1 - number2;
        product = number1 * number2;
        quotient = number1 / number2;
        remainder = number1 % number2;
        System.out.println("The sum,difference,product,quotient and remainder of " + number1 +
                " and " + number2 + " are " + sum + "," + difference + "," + product + "," + quotient + " and " + remainder);

        //2//
        x = 31*number1 + 17*number2;
        System.out.println("Tong la: " + x);
    }
}
