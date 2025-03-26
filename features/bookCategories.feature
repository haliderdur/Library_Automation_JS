@lib-03
Feature: Book Categories

    As a user, I want to see 21 book categories, so I can filter my favorite books.

    #* AC1: users should see 21 book categories When users click the Book Categories drop down 
    #*      ALL, Action and Adventure, Anthology, Classic, Comic and Graphic Novel, Crime and Detective, Drama
    #*      , Fable, Fairy Tale, Fan-Fiction, Fantasy, Historical Fiction, Horror, Science Fiction, Humor
    #*      , Biography/Autobiography ,Romance, Short Story, Essay, Memoir, Poetry           

    
@lib-03-01
    Scenario Outline: Users see all 21 book categories under Book Categories dropdown
    Given user is already on the login page
    When user is already logged in as "<user-type>"
    And user clicks the Books section
    And user clicks books category dropdown 
    Then user should see all 21 book categories in the dropdown
    Examples:
    |user-type|
    |admin    |
    |student  |

 @lib-03-02
    Scenario Outline: Users see all 21 book categories in the Book Categories dropdown
    Given user is already on the login page
    When user is already logged in as "<user-type>"
    And user clicks the Books section
    And user clicks books category dropdown 
    Then book category name "<book-category-name>" should be inlcuded in the categories
    Examples:
     | user-type | book-category-name      |
     | admin     | ALL                     |
     | admin     | Action and Adventure    |
     | admin     | Anthology               |
     | admin     | Classic                 |
     | admin     | Comic and Graphic Novel |
     | admin     | Crime and Detective     |
     | admin     | Drama                   |
     | admin     | Fable                   |
     | admin     | Fairy Tale              |
     | admin     | Fan-Fiction             |
     | admin     | Fantasy                 |
     | admin     | Historical Fiction      |
     | admin     | Horror                  |
     | admin     | Science Fiction         |
     | admin     | Humor                   |
     | admin     | Biography/Autobiography |
     | admin     | Romance                 |
     | admin     | Short Story             |
     | admin     | Essay                   |
     | admin     | Memoir                  |
     | admin     | Poetry                  |
     | student   | ALL                     |
     | student   | Action and Adventure    |
     | student   | Anthology               |
     | student   | Classic                 |
     | student   | Comic and Graphic Novel |
     | student   | Crime and Detective     |
     | student   | Drama                   |
     | student   | Fable                   |
     | student   | Fairy Tale              |
     | student   | Fan-Fiction             |
     | student   | Fantasy                 |
     | student   | Historical Fiction      |
     | student   | Horror                  |
     | student   | Science Fiction         |
     | student   | Humor                   |
     | student   | Biography/Autobiography |
     | student   | Romance                 |
     | student   | Short Story             |
     | student   | Essay                   |
     | student   | Memoir                  |
     | student   | Poetry                  | 
     
    #? Should there be more scenarios for this user story? Feel free to add more scenarios.