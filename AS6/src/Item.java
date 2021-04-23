public class Item implements Serializable {
    private static final long serialVersionUID = 1L;
    private String productName;
    private String billCode;
    private int quantity;
    private double price;

    public Item() {
        super();
    }

    public Item(String productName, String billCode, int quantity, double price) {
         super();
         this.productName = productName;
         this.billCode = billCode;
         this.quantity = quantity;
         this.price = price;
    }
//getter and setter 
// overide toString() method
}