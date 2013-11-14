Feature: Modulino

  Scenario: Running programs
    Given program "scriptedmain.rb"
    When it runs
    Then the output reflects the caller

    Given program "test.rb"
    When it runs
    Then the output reflects the caller
