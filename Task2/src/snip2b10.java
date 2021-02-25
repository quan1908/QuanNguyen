public class snip2b10 {

    enum Cards {
        Spade, Heart, Diamond, Club
    }
    public static void main(String[] args) {
        Cards card = Cards.Diamond;

        // enum variable is used to control a switch statement
        switch (card) {
            case Spade:
                System.out.println("SPADE");
                break;
            case Heart:
                System.out.println("HEART");
                break;
            case Diamond:
                System.out.println("DIAMOND");
                break;
            case Club:
                System.out.println("CLUB");
                break;
        } // End of switch-case statement
    }
}
