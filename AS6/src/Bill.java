public class Bill implements Serializable {
    private static final long serialVersionUID = 1L;

    private String billCode;
    private String customerName;
    private String createdDate;
    private float discount;
    private double totalPrice;

    public Bill() {
         super();
         }

        public Bill(String billCode, String customerName, String createdDate,float discount, double totalPrice) {
         super();

         this.billCode = billCode;
         this.customerName = customerName;
         this.createdDate = createdDate;
         this.discount = discount;
         this.totalPrice = totalPrice;
         }

         // getter and setter
         // overide toString() method
         }