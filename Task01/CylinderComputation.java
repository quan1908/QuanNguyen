public class CylinderComputation {

    public static void main(String[] args){
        double radius=8;
        double height=9;
        double surfaceArea,baseArea,volume;
        surfaceArea=2*3.14*radius*height;
        baseArea=2*3.14*radius*radius+2*3.14*radius*height;
        volume=3.14*radius*radius*height;
        System.out.print("Dien tich be mat hinh tru la: ");
        System.out.println(surfaceArea);
        System.out.print("Dien tich co so hinh tru la: ");
        System.out.println(baseArea);
        System.out.print("The tich hinh tru la: ");
        System.out.println(volume);
    }
}
