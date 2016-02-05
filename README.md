#Ruby Concordance

This project is just a simple script that you can run in the terminal in order to find reoccuring words in an TEI formatted XML file. It is designed to work with poetry. I wrote the small program in order to have a simple, yet effective, way to find repeated patterns of words in Old English poems. This program solves this problem.

In order to run the program, you must type in your terminal

 ```ruby app.rb <word> <tei-xml file>``` 

I've included an XML file with the Old English poem "The Wanderer" as a sample text. It will print out the reoccuring words and the line numbers that they appear on. If the same words are repeated on the same line, it will only print the line once.

I intend to expand this script into an app, but for the time being, it just works.