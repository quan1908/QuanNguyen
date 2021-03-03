public class Lab04a1 {

        public static void main(String[] args) {
        int row,col;

        for (row = 5; row >= 1; row--){
            for (col = row;col <= 5;col++){
                System.out.print("  ");
            }
            for (col = row; col >= 1; col--){

                System.out.print("*   ");
            }
            System.out.println(" ");
        }
    }
}
