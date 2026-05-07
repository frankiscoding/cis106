# Notes 9

## Grep
The grep command is used to search text in a given file(s). It works line by line.

``` grep + option + search criteria + file(s) ```
#### Example
* Search any line that contains the word "sample" in a given file regardless of the case and with number line:
  ``` grep -in 'sample' ~/Documents/sample.txt ```
*  Display a list of users with the bin/bash login shell
  ``` grep -i "/bin/bash" /etc/passwd ```
*  Search for all the lines that do not contain the word 'war'
  ``` grep -v 'war' ~/Documents/Books/war-and-peace.txt ```

## AWK
Awk is a scripting language used for processing and displaying text. Awk can work with a text file or from standard output. Awk also performs operations line by line.

``` awk + options + {awk command} + file + file to save (optional) ```
#### Example
*  Print the first column of every line of a file
  ``` awk '{print $1}' ~/Documents/Csv/ars.csv ```
*  Print the first and last field of the /etc/passwd
  `awk -F: '{print $1," = ",$NF}' /etc/passwd`

## Sed
SED is a stream editor that performs operations on files and standard output. For example, it can search, find and replace, insert, and delete. By using SED you can edit files without opening them.

``` sed + options + sed script + file ```
#### Example
*  Replace the fourth occurrence per line in a file
  ``` sed 's/false/true/4' joke.json ```
*  Replacing string on a specific line number
  ``` sed '3 s/false/true/' joke.json ```

## How to use the pipe
The pipe allows you to redirect the standard output of a command to the standard input of another.

``` command_1 | command_2 | command_3 | ... | command_N ```
#### Example
*  Using grep to look for a string in a particular man page
  ``` man ls | grep "human-readable" ```
*  Display only the ip addresses from the output of the ip command
  ``` ip addr | grep -Eo '[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}' ```
* Display only the 2nd line in a file
  ``` head -2 file.lst | tail -1 ```

## How to save output (>)
When using this command ">", all you're doing is taking what a command prints to the screen and storing it in a file instead.

``` command output + > + file ```
#### Example
*  Save the output of a command to a file
  ``` ls -lA ~ > all-files-in-home.txt ```
*  Do not display errors. Send errors to the black hole
  ``` ls -lA downloads/ 2> /dev/null ```
* Save the error to a file and the success to another
  ``` la -lA downloads/ Pictures > success.txt 2> error.txt ```

## How to append
Append means to add more to a file instead of overwriting is content. When we use > on a file that already exists and contains data, we overwrite what is already inside the file.

``` command >> file ```
#### Example
*  Add a line of text to a file
  ``` echo "New line" >> file.txt ```
*  Add contents of one file to another
  ``` cat file1.txt >> file2.txt ```
* Add all system information to a file
  ``` uname -a >> system-info.txt ```