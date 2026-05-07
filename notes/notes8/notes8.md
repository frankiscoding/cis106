# Notes 8

## Cat
The cat command is used for displaying the content of a file. The "cat" part is short for con**cat**enate which is the command's intended use.

``` cat + option + file(s) to display```
#### Examples
* Dsiplay the content of "sample" located in Documents
  ``` cat ~/Documents/sample.txt ```
* Display the content of a file with line numbers
  ``` cat -n ~/Documents/sample.txt ```
* Display the content of a file including non printing characters and line endings
  ``` cat -A ~/Documents/sample.txt ```

## Tac
The tac command is used for displaying the content of a file in reverse order. Just like cat, tac concatenates and displays the output of the concatenation. A tip for memorization, "tac" is "cat" spelled backwards and it displays files in reverse.

``` tac + option + file(s) to display ```
#### Example
* Display the content of a file located in Pictures in reverse order
  ``` tac ~/Pictures/sample.txt ```
* Display the content of multiple files in reverse order
  ``` tac ~/Downloads/sample.py ~/Downloads/sample.sh ~/Downloads/sample.txt ```

## Head
The head command the top # number of lines in a given file. By default, it will print out 10. If there's more than one file name provided then the data from each file is preceded by its file name.

``` head + option + file(s) ```
#### Example
* Display the first 7 lines in a file
  ``` head -7 ~/Downloads/Texts/sample.txt ```
* Display the first line on multiple files using wildcards
  ``` head -n 1 Txt/*.txt Code/*.py ```

## Tail
The tail command displays the last # number of lines of a given file. By default, similar to head, prints the last 10 lines. If there's more than one file name provided then the data from each file is preceded by its file name.

``` tail + option + file(s) ```
#### Example
* Display the last 5 lines of a file
  ``` tail -5 ~/Downloads/sample.txt ```
* Display a given number of lines of the output of a given command
  ``` ls -l ~/home/hi.txt | tail -n 2 ```
* Display the first 5 lines of multiple files
  ``` tail -n 5 Greetings/{hello,hi,hey}.txt ```

## Cut
The cut command is used to extract a specific section of each line of a file and display it to the screen.

``` cut + option + file(s) ```
#### Example
* Display a list of all the users in your system
  ``` cut -d ':' -f1 /etc/passwd ```
* Cut a range of bytes per line
  ``` cut -b 1-5 sample.txt ```
* Cut the permissions form the output of ls
  ``` ls -l | cut -d ' ' --complement -s -f1 ```

## Sort
The sort command is used for sorting files. The sort command supports sorting: alphabetically, in reverse order, by number, and by month. 

``` sort + option + file ```
#### Example
* Sort a file
  ``` sort sample.txt ```
* Sort a file with numerical data
  ``` sort -n sample.txt ```
* Check is a file is sorted
  ``` sort -c sample.txt ```

## WC
The wc command is used for printing the number of lines, characters and bytes in a file.

``` wc + option + file(s)```
#### Example
* Display the number of characters in a file
  ``` wc -m sample.txt ```
* Display the number words in a file
  ``` wc -w sample.txt ```