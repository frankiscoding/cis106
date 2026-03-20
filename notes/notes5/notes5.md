# Notes 5
---
## LS
* **Usage**
  * Used for displaying all the files inside a given directory. When no directory is specified, ls displays the files in the current working directory. In other words, ls would display all the files/folders in whichever CURRENT directory the user is in. Very useful in case you want to know what files are in your directory in case you want to add, remove, or edit data.
* **Formula**
  * ``` ls + option + directory to list ```
* **Examples**
  * List the content of the present working directory:
    * ``` ls ```
  * List all the files including the hidden files in the current directory
    * ``` ls -a ```
  * List of all the files inside a given directory
    * ``` ls -a ~/Pictures```

## CD
* **Usage**
  * Used for changing the current working directory (basically just moves you around). When no directory is given, cd changes the current working directory to the home directory of the current user. Very useful due to allowing the user to move around different directories which allows them to change, add, or remove data without opening the Files Explorer.
* **Formula**
  * ``` cd + destination```
* **Examples**
  * How to go to your home directory
    * ``` cd ```
    * ``` cd ~ ```
    * ``` cd $HOME ```
  * If you want to go to your previous current working directory
    * ``` cd - ```

## PWD
* **Usage**
  * Used for displaying the current working directory
* **Formula**
  * ``` pwd ```
* **Example**
  * Displays a help guide
    * ``` pwd --help ```
---

## What is a variable?
A variable is a container or placeholder for data.
## How do I use a variable?
You use a variable by choosing a legal name and assigning a value to that same variable.
## What is an environment variable?
They are variables used by the shell to track specific system information and user information. Some do not change from user to user, while user-specific variables will change depending on the user that’s logged in.
## What is a user-defined variable?
They are variables created by the user and exist only in the script and subshell that runs the script. These variables allow you to temporarily store data and use it throughout the script, like any other programming language.
## What is the root directory?
The first directory in the file system that contains all the files and subdirectories that makes your computer.
## What does "Parent Directory" mean?
A folder that is always working inside a particular directory and can only move forward (to a subdirectory) or backwards (to the previous directory).
## What does "Current working directory" mean?
It means the current directory in which you are in at the moment.
## What is an absolute path? Include an example
An absolute path is the location of a file starting at the root of the file system 
* Example:
  * ``` /home/frank/Downloads/assignment16 ```
## What is a relative path? Include an example
A relative path is the location of a file starting from the current working directory or a directory that is located inside the current working directory 
* Example:
  * ``` Downloads/assignment16 ```
## What is the difference between "Your home directory" and "The home directory"?
The difference between the two is that “your home directory” refers to your user’s home directory while “the home directory” refers to the home directory located in the root.