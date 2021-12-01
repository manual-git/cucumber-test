Feature: Make a payment

  Background:
    Given The user is on Sucursal Virtual Persona website

  Scenario Outline: The user makes a payment from Sucursal Virtual Personas website
    When The user select the payment features :
      |credit_card   |value   |
      |<credit_card> |<value> |
    And His credit card balance is higher than payment value
    Then The receipt should be sent to his email

    Examples:
      |credit_card|value    |
      |Visa       |100      |
      |Amex       |200      |
      |Master     |500      |