package us.yellosoft.scriptedmain;

/** Test script */
public final class Test {
  /** utility class */
  private Test() {}

  /**
     <p>Test app</p>
     @param args CLI arguments
  */
  public static void main(final String[] args) {
    System.out.println("Test: The meaning of life is " +
                       ScriptedMain.meaningOfLife());
  }
}
