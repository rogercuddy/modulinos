public class ScriptedMain {
	public static void main(String[] args) {
		System.out.println("Number of Args: " + args.length);

		System.out.println("Program: " + ScriptedMain.class.getProtectionDomain().getCodeSource().getLocation().getPath());

		for (int i = 0; i < args.length; i++) {
			System.out.println("Arg: " + args[i]);
		}
	}
}