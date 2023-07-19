import java.util.Scanner;
public class TheGreenHouse {
	public static void main(String[] args) {
		
		// Scanner object to read user input
		Scanner sc = new Scanner(System.in);
		
		// Variables to store user input parameters
		int desiredTemperature;
		int currentTemperature;
		String coolingSystem;
		int coolingSystemLevel;
		
		// Get desired temperature from user
		System.out.println("What is the desired temperature inside the Green House? ");
		desiredTemperature = sc.nextInt();
		
		// Get current temperature from user
		System.out.println("What is the current temperature inside the Green House? ");
		currentTemperature = sc.nextInt();
		
		// Get cooling system from user
		System.out.println("Which cooling system do you want to use? ");
		coolingSystem = sc.next();
		
		// Get cooling system level from user
		System.out.println("At what level do you want to set the cooling system? ");
		coolingSystemLevel = sc.nextInt();
		
		// Adjust desired temperature based on user input
		int adjustedTemperature = desiredTemperature - currentTemperature;
		
		// Switch statement to handle cooling system selection
		switch (coolingSystem) {
			case "Fan":
				if (adjustedTemperature > 20) {
					System.out.println("Set fan to high and run for 5 minutes");
				} else if (adjustedTemperature > 10) {
					System.out.println("Set fan to medium and run for 5 minutes");
				} else {
					System.out.println("Set fan to low and run for 5 minutes");
				}
				break;
				
			case "Air Conditioner":
				if (coolingSystemLevel == 5) {
					System.out.println("Set air conditioner to level 5 and run for 10 minutes");
				} else if (coolingSystemLevel == 4) {
					System.out.println("Set air conditioner to level 4 and run for 10 minutes");
				} else if (coolingSystemLevel == 3) {
					System.out.println("Set air conditioner to level 3 and run for 10 minutes");
				} else if (coolingSystemLevel == 2) {
					System.out.println("Set air conditioner to level 2 and run for 10 minutes");
				} else if (coolingSystemLevel == 1) {
					System.out.println("Set air conditioner to level 1 and run for 10 minutes");
				}
				break;
				
			default:
				System.out.println("Invalid cooling system");
				break;
		}
		
		// Get final temperature
		System.out.println("What is the final Green House temperature? ");
		int finalTemperature = sc.nextInt();
		
		// Check if desired temperature has been reached
		if (finalTemperature == desiredTemperature) {
			System.out.println("The Green House is now at the desired temperature");
		} else {
			System.out.println("The Green House has not reached the desired temperature");
		}
		
		// Close Scanner object to prevent memory leak
		sc.close();
		
		// Store Green House temperature and cooling system records in a database
		String sql = "INSERT INTO GreenHouseRecords (finalTemperature, coolingSystem, coolingSystemLevel) VALUES (" + finalTemperature + ", '" + coolingSystem + "', " + coolingSystemLevel + ");";
		System.out.println("SQL Statement: " + sql);
		// Database operations would take place here
		
	}
}