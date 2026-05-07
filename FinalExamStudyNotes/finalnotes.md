# Final Notes

### **How to clone a GitHub depository**
   Inside your terminal, you would type in the code below:
` git clone [link to GitHub depository]/[directory you want to use] `
    And it would download the GitHub repository to your computer.
<br>

### **How to use the git commands**
* `git pull` - Synchronize your local repository with the latest changes from GitHub.
* `git add .` - Tracks all changes made to your file
* `git commit -m ".." ` - Save a snapshot of your changed with a short message
* ` git push ` - Send your changes to GitHub
<br>

### **How to write a Markdown file that contains images and proper formatting**
   ` ![image description](image link)`
<br>

### **How to convert a Markdown file to PDF**
You would right-click in the text area and on the menu that pops up, you'd click: "Markdown PDF: Export (PDF)".
<br>

### **How to compress a folder to Debian**
You would need to run this command in the terminal:
` zip -r + [name of zip file] + [folder name] `
This compresses your directory to a zip file
<br>

### **What are Absolute paths and relative paths?**
Absolute paths are complete file system addresses that specify a file or directory's location starting from the root directory. Relative paths specify the location of a file in relation to the current working directory, rather than from the root of the file system.
* Create a file using **absolute** path:
  ` echo "Text here" > /path/to/directory/filename.txt `
* Create a file using **relative** path:
  ` touch foldername/filename.txt `
<br>

### **How to work with the manual pages**
In your terminal, you would start by typing ` man + [command] `. This would open up a manual for the command with all possible options to give the user a better understanding on ow to use the command.
<br>

### **How to search for specifc words in the manual page**
Within the manual page, press the "/" key on your keyboard and then type the specifc word you're looking for.
<br>

### **How to redirect output (>,>>,|)**
When using `>`, this command saves the output of your command onto a file.
` echo "example" > filename.txt `
When using `>>`, this appends the output of your command onto a file. For example you have a file named sample.txt that already has Line1 inside of it. If you were to run this command:
 ` echo "Line2" >> sample.txt `
 Then the output would look like: 
```
Line 1
Line 2
```
When using `|`, this allows you to redirect the output of one command, to the input of another.
` man ls | grep "human-readable" `
<br>

### **How to append the output of a command to a file**
`>>` - Adds the output of a command to another file
Imagine a text file already has "Hello" in it. 
`echo " world!" >> hello.txt`
Output:
`Hello world!`
<br>

### **How and when to redirect the output of a command to another (pipes)**
In order to use `|` all you would need to do is place them after a command to chain multiple commands together. It is recommended to use pipes when you need to filter, sort, or modify data.
<br>

### **How to use echo and output redirection to create a new file that creates some text**
`echo "sample text" > filename.txt`
<br>

### **How to use wildcards (For copying and moving multiple files at the same time)**
In order to copy or move multiple files using the wildcards, you can use `*` to match any number of characters or `?` to match a single character within the `cp` or `mv` commands.
**Examples:**
Copy all files - `cp *.file-extension /destination/`
Move files matching a prefix - `mv filename* /destination/`
Match multiple extensions - `cp *.jpg *.png *.jpeg /images/`
<br>

### **How to use brace expansions (For creating entire directory sturctures in a single command)**
`mkdir + option + foldername/{subfolder1/{1,2},subfolder2/{3,4},subfolder3/{5,6}}`
Running this command in the terminal would create an entire directory structure.
<br>

### **How to create a simple "hello world" shells script**
In a text editor, type:
```bash
#!/bin/bash
echo "Hello world!"
```
<br>

### **How to use variables in shell script**
```bash
name = "Frank"
echo " Hello world my name is $name"
```
<br>

### **Awk**
A scripting language used for processing and displaying text.
`awk + options + {awk command} + file + file to save (optional)`

**Examples:**
* Print first field of a file - `awk -F: ''{print $1} /filename/`
* Convert the first field to upper/lower case - `awk -F: '{print toupper($1)}' /filename/`
* Print the first and 4th field with a different field separator - `awk -F: '{OFS="="}{print $1,$4}' /filename/`
<br>

### **Cat**
The cat command is used for displaying the content of a file. 
`cat + option + file(s) to display`

**Examples:**
* Display the file - `cat sample.txt`
* Display with line numbers - `cat -n sample.txt`
* Display with non printing characters and line endings - `cat -A sample.txt`
<br>

### **Cp**
The cp command copies files from a source to a destination
`cp + file(s) + destination`
To copy directories:
`cp -r + directory + destination`

**Examples:**
* Copy a file - `cp Downloads/wallpaper.png Pictures/`
* Copy with absolute path - `copy -r ~/Downloads/wallpapers ~/Pictures/`
* Copy to content of a directory to another - `cp Downloads/wallpapers/* ~/Pictures/`
<br>

### **Cut**
The cut command is used for extracting a specific section of each line of a file and displaying it
`cut + option + file(s)`

**Examples:**
* Display the first column - `cut -d":" -f1 /directory/`
* Change the delimiter to custom text - 
  `cut -d " " -f(columns) --output-delimiter="custom text" filename.ext`
<br>

### **Grep**
Used to search text in a given file. Works line by line
`grep + option + search criteria + file(s)`

**Examples:**
* Search any line that contains the word sample in a file regardless of case and with number line
  `grep -in 'sample' ~/Documents/sample.txt`
* Display a list of users - `grep -i "/bin/bash" /etc/passwd`
<br>

### **Head**
Lists the top # number of lines in a given file. By default, it prints out 10. If more than one filename is provided, then data from each file is preceded by filename.
`head + option + file(s)`

**Examples:**
* Display the first 7 lines - `head -7 sample.txt`
* Display the first line in multiple files - `head -n 1 Txt/*.txt Code/*.py`
<br>

### **LS**
Used for listing all the files inside a given directory. When no directory is specified, it displays all the files in the current directory.
`ls + option + directory` 

**Examples:**
* List all the files including the hidden files in current directory - `ls -a`
* List all the files in a given directory - `ls -a ~/Downloads`
<br>

### **Man**
Displays a manual page for commands, programs, and system functions. It's a help system for Linux.
`man + command`

**Examples:**
* Display the manual page for cp - `man cp`
* Look through every man page that has the keyword 'sample' - `man -k keyword`
<br>

### **Mkdir**
Used for creating a single or multiple directories
`mkdir + name of directory`

**Examples:**
* Create directory in present directory - `mkdir folder`
* Create a directory using relative path - `mkdir folder/ocean`
* Create a directory using absolute path - `mkdir ~/folder/ocean`
* Create multiple directories - `mkdir hello/hi hello/hey hello/whatsup`
<br>

### **MV**
Moves and renames directories or files
`mv + source + destination`
`mv + file/directory + new name

**Examples:**
* Move a file using relative path - `mv Downloads/sample.pdf Documents/`
* Move a directory using absolute path - `sudo mv ~/Downloads/sample /new/destination`
* Rename a file - `mv sample.txt test.txt`
<br>

### **Tac**
Simlar to the cat command but instead displays the content in reverse order. Also, tac is cat spelled backwards.
`tac + option + file(s)`

**Examples:**
* Display a file in reverse - `tac ~/Pictures/pic.txt`
* Display multiple files in reverse - `tac sample.py sample.txt sample.sh`
<br>

### **Tail**
Displays the last # number of lines in a given file. Similar to head, by default it prints to 10. If more than 1 file is provided then the data from each file is preceded by its file name.
`tail + option + file(s)`

**Examples:**
* Display the last 5 lines of a file - `tail -5 sample.txt`
* Display a given number of lines of the output of a given command - 
  `ls -l hi.txt | tail -n 2`
<br>

### **Touch**
Creates files
`touch + filename`

**Examples:**
* Create several files - `touch filename.txt filename.py filename.csv`
* Create a file using absolute path - `~/Downloads/filename.txt`
* Create a file using relative path - `touch Downloads/filename.txt`
<br>

### **Tr**
TR stands for translate. It's used to replace, delete, and squeeze repeated characters
`tr + option + characters to find + characters to replace with`

**Examples:**
* Replace lowercase with uppercase - `echo "hello | tr 'a-z' 'A-Z'` --> `HELLO`
* Replace spaces into hyphens - `echo "linux is fun" | tr " " "-"` --> `linux-is-fun`
* Delete characters - `echo "banana" | tr -d 'a'` --> `bnn`
<br>

### **Tree**
Shows the directory structure in a "tree" like format, making it easy to see folders and files visually.
`tree + option + directory`

**Examples:**
* Tree must be installed first - `sudo apt install tree`
* Show current directory structure - `tree`
* Limit the depth to 2 directories - `tree -L 2 ~/Downloads`
* Show hidden files - `tree -a`