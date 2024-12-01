import java.util.Scanner;

public class DistanceCalculator {
    public static void main(String[] args){
        System.out.println("**********Welcome to Distance Calculator**********");
        // s = ut + 1/2 at*t
        Scanner scanner = new Scanner(System.in);

        double initialVelocity;
        double timeTaken;
        double acceleration;
        double distance;

        do {
            System.out.print("Enter the Initial Velocity: ");
            initialVelocity = scanner.nextDouble();
        } while (initialVelocity < 0);

        do {
            System.out.print("Enter the time taken: ");
            timeTaken = scanner.nextDouble();
        } while (timeTaken < 0);

        do {
            System.out.print("Enter the acceleration: ");
            acceleration = scanner.nextDouble();
        } while (acceleration < 0);

         distance = (initialVelocity * timeTaken) + 0.5 * acceleration * Math.pow(timeTaken, 2);

        System.out.println("Your covered distance is: " + distance + " Meters");


    }
}
