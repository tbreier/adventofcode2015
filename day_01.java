import java.io.*;

class Day01 {
	public static void main(String[] args) {
		InputStreamReader isReader = new InputStreamReader(System.in);
		BufferedReader bufReader = new BufferedReader(isReader);
		String inputStr = null;
		try {
			while((inputStr = bufReader.readLine()) != null) {
				int floor = 0;
				boolean enteredBasement = false;
				for (int i = 0; i < inputStr.length(); i++){
					char c = inputStr.charAt(i);        
					switch(c) {
						case '(': floor++; break;
						case ')': floor--; break;
						default:
							System.out.println("Unknown char " + c + ", ignored.");
							break;
					}

					if(floor == -1 && !enteredBasement) {
						enteredBasement = true;
						System.out.println("Entered Basement! Char position " + (i+1));
					}
				}
				System.out.println("Floor: " + floor);
			}
		} catch(Exception e) {
			System.out.println("Exception: " + e.toString());
		}
	}
}