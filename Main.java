import java.awt.*;
import java.util.Arrays;
import java.util.Date;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
    /*
     Primitive Data Types -->
        int firstVariable = 5;
        byte marks = 99;
        boolean isPassed = true;
        long phoneNumber = 7002204332L;
        float percentage = 91.3F;
        double salaryPerMonth = 1_50_000;

     Non-Primitive Data Types -->
        String myFirstEssay = new String("This is my first essay!");
        String myName = "Mamdous";

        Date currentDate = new Date();

     Memory Primitive vs Non-primitive -->
         Primitive -->
        int a = 5;
        int b = a;
        a = 7;

         Non-Primitive -->
        Point a = new Point(1,2);
        Point b = a;
        a.x = 5;

 */

    /*
        Strings -->
        String a = new String("This is my test string");
        String b = "Yes";

     */
    /*
       Arrays -->
        int[] marks = new int[5];
        marks[0] = 92;
        marks[1] = 95;
        marks[2] = 88;
        marks[3] = 94;
        marks[4] = 87;

        int[] marks = new int[] {92,95,88,94,87};
        Arrays.sort(marks);
        System.out.println(Arrays.toString(marks));

        int[][] marks = new int[][] {{92,95,88},{94,87}};
        System.out.println(Arrays.deepToString(marks));
     */

       /*
         Constants -->
        final float PI_IN_MY_PROGRAM = 3.14F;
        */

       /*
         Arithmetic Expressions -->
        int a = 10; >
        int b = 3;

        System.out.println(a+b);
        System.out.println(a-b);
        System.out.println(a*b);
        System.out.println(a/b);
        System.out.println(a%b);

         int a = 5;
        System.out.println(a++);
        System.out.println(++a);
          //BODMAS
        int  num = (4 + 6) - 7 * 8 / 9;

        int p = 9;
        int q = 19;

//      //  p = p + q
        p += q;
        System.out.println(qp);
        */
    /*
     casting -->
        long a = 5;
        int b = (int) a;
        // byte > short > int > long > float > double

        int x = Integer.parseInt("5");
        System.out.println(x);
        */

        /*
        // Math Class -->
        int a = 5;
        int b = 10;
        System.out.println(Math.max(a,b));
        System.out.println(Math.min(a,b));

        float percentage = 91.3F;
        System.out.println(Math.round(percentage));
        System.out.println(Math.ceil(percentage));
        System.out.println(Math.floor(percentage));

        int num = 169;
        System.out.println(Math.pow(num, 1));
        System.out.println(Math.sqrt(num));

        double random = Math.random();
        System.out.println(random * 10);
        */

        /*
        // User Inputs -->
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter your name: ");
        String name = scanner.nextLine();
        System.out.println("You are "+ name);

        System.out.print("Please enter your age: ");
        byte age = scanner.nextByte();
        System.out.println("You are  " + age + " Years old");
        */

        /*
        // Operators -->
        int a = 5;
        Scanner scanner = new Scanner(System.in);
        int b = scanner.nextInt();

        System.out.println("a == b " + (a == b));
        System.out.println("a != b " + (a != b));
        System.out.println("a < b " + (a < b));
        System.out.println("a > b " + (a > b));
        System.out.println("a <= b " + (a <= b));
        System.out.println("a >= b " + (a >= b));

        // Logical Operators -->
        boolean isPassed = true;
        boolean isInUniform = true;

        System.out.println(!isPassed);
        System.out.println(isPassed || isInUniform);
        System.out.println(isPassed && isInUniform);
         */

        /*
        // Conditional Statements -->

        System.out.print("Please Enter your day: ");
        Scanner scanner = new Scanner(System.in);
        int day = scanner.nextInt();

        if (day == 1) {
            System.out.println("It's Monday!");
        }
        else if (day == 2) {
            System.out.println("It's Tuesday!");
        }
        else if (day == 3) {
            System.out.println("It's Wednesday!");
        }
        else if (day ==4) {
            System.out.println("It's Thursday!");
        }
        else if (day == 5) {
            System.out.println("It's Friday!");
        }
        else if (day == 6) {
            System.out.println("It's Saturday!");
        }
        else if (day == 7) {
            System.out.println("It's Sunday!");
        }
        else {
            System.out.println("It's not a week day! ");
        }
        // For comparing strings use .equals()

        // Ternary Operator -->
        int a = 5;
        int b = a == 5 ? 1 : 2;

        // Switch Statement
        System.out.print("Enter your day: ");
        Scanner scanner = new Scanner(System.in);
        String day = scanner.next();

        switch (day) {
            case "1" :
                System.out.println("It's Monday!");
                break;
            case "2" :
                System.out.println("It's Tuesday!");
                break;
            case "3" :
                System.out.println("It's Wednesday!");
                break;
            case "4" :
                System.out.println("It's Thursday!");
                break;
            case "5" :
                System.out.println("It's Friday!");
                break;
            case "6" :
                System.out.println("It's Saturday!");
                break;
            case "7" :
                System.out.println("It's Sunday!");
                break;
            default:
                System.out.println("Not a week day!");
        }

        */

        /*
        // Loops (Iterative Statements)
        int a = 5; // Initialization
        while (a < 10) { // Condition Check
            System.out.println(a);
            a++; // increment
        }

        for (int b = 10; b > 0; b--){
            System.out.println(b);
        }

          int c = 5;
        do {
            System.out.println(c);
            c++;
        } while (c < 10);

        int[] marks = new int[] {92, 95, 88, 94, 87};

        for (int i = 0; i < 5; i++) {
            System.out.println(marks[i]);
        }

        // For-each loop
        for ( int mark : marks) {
            System.out.println(mark);
        */
        // break; and continue;

        int a = 5;
        while (a != 10){
            a++;
            if (a == 8) continue;
            System.out.println(a);

        }










    }
}
