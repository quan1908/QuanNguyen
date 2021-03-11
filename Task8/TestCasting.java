public class TestCasting {
    public static void main(String[] args) {
        A a1 = new C();   // upcast
        //Constructed an instance of A
        //Constructed an instance of B
        //Constructed an instance of C
        System.out.println(a1);  // run C's toString()
        //This is C
        B b1 = (B)a1;     // downcast okay
        System.out.println(b1);  // run C's toString()
        //This is C
        C c1 = (C)b1;     // downcast okay
        System.out.println(c1);  // run C's toString()
        //This is C

        A a2 = new B();  // upcast
        //Constructed an instance of A
        //Constructed an instance of B
        System.out.println(a2);  // run B's toString()
        //This is B
        B b2 = (B)a2;    // downcast okay
        C c2 = (C)a2;
        //compilation okay, but runtime error:
        //java.lang.ClassCastException: class B cannot be cast to class C
    }
}