Feature: Book category

  Background: I should be able to see homepage
    Given User enters URL":https://www.nopcommerce.com/"
    And User is on homepage
  Scenario Outline: I should be able to see top menu on homepage with categories
    When user is on home page
    Then user should be able to see top menu tabs with "<categories>"
    Examples:
      |  categories     |
      |  Computers       |
      |  Electronics     |
      |  Apparel         |
      | Digital downloads|
      | Books             |
      | jewellery         |
      | Gift card        |

  Scenario Outline: user should be able to see book page with filters
    When   user selects book category from top menu tabs on home page
    Then   user should be navigated to book category
    And    user  should be able to see "<filters>"
    Examples:
      | Filters         |
      | Short by        |
      | Display         |
      |  the Grid       |
      | List Tab        |

  Scenario Outline: User should be able to see list of terms of each filter
    Given User is on book page
    When  User clicks on "<filter>"
    Then  User should be able to see "<List>" in dropwown menu

    Examples:
      |  Filter       |  List                                                                  |
      | sort by       | Name:A to Z,Name:Z to A ,price:High to low,price:low to high,Created on|
      | Display       | 3,6,9                                                                   |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given user is on book page
    When  User clicks on "<filter>"
    And  User clicks on any "<option>"
    Then User should be able to choose any filter options from the list
    And  User should be able to see "<result>"
    Examples:
      |filters     |option           |results                |
      |Sort by     | Name:A to Z     |sorted a products with the product name in alphabetic order A to z|
      |Sort by     | Name:Z to A     |sorted a products with the product name in alphabetic order Z to A|
      |Sort by     |Price:low to high|sorted a products with the price in descending order               |
      | Sort by    |Price:high to low| sorted a products with the price in ascending order               |
      |sort by     |create on        | Recently added products should be show first                      |
      |Display     |3                |3 products in a page                                                |
      |Display     |6                |6 products in a page                                                |
      |Display     |9                |9 products in  a page                                               |

  Scenario Outline: User should be able to see product display format according display format type as per given picture
  in srs document
    Given  User am on book page
    When   User clicks on "<display format icon>"
    Then   User should be able to see product display format according display format type as per given picture
  in srs document
    Examples:
      | display format icon |
      | Grid                 |
      |List                  |