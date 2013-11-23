Feature: Generating things
    In order to generate many a thing
    As a CLI newbie
    I want foodie to hold my hand, tightly

    Scenario: Recipes
        When I run "foodie recipe dinner steak"
        Then the following files should exist:
            | dinner/steak.txt |
        Then the file "dinner/steak.txt" should contain:
        """
        This is ashish singh writing a gem
        """


