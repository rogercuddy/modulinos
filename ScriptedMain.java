public class ScriptedMain {
	public static void main(String[] args) {
		System.out.println("Program: " + ScriptedMain.class.getCanonicalName());

		for (int i = 0; i < args.length; i++) {
			System.out.println("Arg: " + args[i]);
		}
	}
}