package fa.training.util;

        import java.util.Scanner;
public class UserInputUtil {

        /**
        * Get value type integer from console.
        *
        * @method inputTypeInt
        * @param value
        */
        public static int inputTypeInt(String value) {
        int intValue = 0;
        do {
            try {
                intValue = Integer.parseInt(value);
                } catch (Exception e) {
                System.out.println(&quot;Please input int value!&quot;);
                }
            break;
            } while (true);
        return intValue;
        }

        /**
* Get value type float from console.
*
* @method inputTypeFloat
* @param value
*/
        public static float inputTypeFloat(String value) {
        float floatValue = 0;
        do {
            try {
                floatValue = Float.parseFloat(value);
                } catch (Exception e) {
                System.out.println(&quot;Please input float value!&quot;);
                }
            break;
            } while (true);
        return floatValue;
        }

        /**
 * Get value type double from console.
 *
 * @method inputTypeDouble
 * @param value
 */
        public static double inputTypeDouble(String value) {
        double doubleValue = 0;
        do {
            try {
                doubleValue = Double.parseDouble(value);
                } catch (Exception e) {
                System.out.println(&quot;Please input double value!&quot;);
                }
            break;
            } while (true);
        return doubleValue;
        }

 /**
 * Get a valid bill code from console.
 *
 * @method checkBillCode
 * @param scanner
 * @return
 */
public static String checkBillCode(Scanner scanner) {
        String billCode;

        System.out.println(&quot;Enter bill code:&quot;);
        billCode = scanner.nextLine();

        while (!Validator.isValidBillCode(billCode)) {
            System.out.println(&quot;Invalid bill code: (example: B0000)&quot;);
            billCode = scanner.nextLine();
            }

        return billCode;
        }
}