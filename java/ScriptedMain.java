public final class ScriptedMain {
  private ScriptedMain() {}

  public static int meaningOfLife() {
    return 42;
  }

  public static void main(final String[] args) {
    System.out.println("Main: The meaning of life is " + meaningOfLife());
  }
}
