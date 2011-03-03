public class ScriptedMain {
	public static void main(String[] args) {
		System.out.println("Directory: " + ScriptedMain.class.getProtectionDomain().getCodeSource().getLocation().getPath());

		System.out.println("Program: " + ScriptedMain.class.getName());

		System.out.println("Number of Args: " + args.length);

		for (int i = 0; i < args.length; i++) {
			System.out.println("Arg: " + args[i]);
		}
	}
}