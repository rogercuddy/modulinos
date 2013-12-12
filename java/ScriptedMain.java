/** Main script */
public final class ScriptedMain {
  /** utility class */
  private ScriptedMain() {}

  /**
     <p>H2G2 meaning of life</p>
     @return meaning of life
  */
  public static int meaningOfLife() {
    return 42;
  }

  /**
     <p>Main app</p>
     @param args CLI arguments
  */
  public static void main(final String[] args) {
    System.out.println("Main: The meaning of life is " + meaningOfLife());
  }
}
