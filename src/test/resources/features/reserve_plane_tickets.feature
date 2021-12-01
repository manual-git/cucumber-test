Feature: Reserve plane tickets

  Background:
    Given The user is on Avianca website

  Scenario Outline: The user reserves flight tickets with enough balance on the credit card
    When The user select the following flight features :
    |origin_city   |destiny_city   |class   |child_seats  |adult_seats  |
    |<origin_city> |<destiny_city> |<class> |<child_seats>|<adult_seats>|
    And His credit card balance is higher than flight tickets price
    Then The flight tickets should arrive in email

    Examples:
      |origin_city|destiny_city|class|child_seats|adult_seats|
      |Medellin   |Canada      |Economica|2      |2          |
      |Bogota     |Paris       |Ejecutiva|4      |4          |



  Scenario Outline: The user reserves flight tickets without enough balance on the credit card
    When The user select the following flight features :
      |origin_city   |destiny_city   |class   |child_seats  |adult_seats  |
      |<origin_city> |<destiny_city> |<class> |<child_seats>|<adult_seats>|
    And His credit card balance is lower than flight tickets price
    Then A error text should be shown

    Examples:
      |origin_city|destiny_city|class|child_seats|adult_seats|
      |Medellin   |Canada      |Economica|2      |2          |
      |Bogota     |Paris       |Ejecutiva|4      |4          |



