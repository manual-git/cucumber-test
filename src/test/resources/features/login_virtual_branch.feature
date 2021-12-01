Feature: Access to Sucursal Virtual Persona

  Background:
    Given The user is on Sucursal Virtual Persona website

  Scenario: The user logs in to the system with correct credentials
    When The user enters the correct credentials
    Then A welcome text should be shown

  Scenario: The user logs in to the system with incorrect credentials
    When The user enters the incorrect credentials
    Then A error text should be shown

