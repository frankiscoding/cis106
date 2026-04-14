# Notes 6

## mkdir
#### **Definition**
* **mkdir** is used for creating a single directory or multiple directories.
#### Formula
* ``` mkdir + name of the directory ```
#### Examples
* To create a directory in the **present working** directory:
  ``` mkdir hello```
* Create a directory in a different directory using **relative** path:
  ``` mkdir hello/ocean ```
* Create a directory in a different directory using **absolute** path:
  ``` mkdir ~/hello/forest ```
* Create **multiple** directories:
  ``` mkdir asthetic/cars asthetic/cities asthetic/forest ```


## touch
#### Definition
* **touch** is used for creating files
#### Formula
* ``` touch + filename ```
#### Example
* Create **several** files:
  ``` touch filename.txt filename.py filename.csv ```
* Create a file using **absolute** path:
  ``` ~/Downloads/filename.txt ```
* Create a file using relative path (assuming your pwd is home):
  ``` touch Downloads/filename.txt ```


## rm
#### Definition
* **rm** is used to remove files.
#### Formula
* ``` rm + filename ```
#### Example
* Remove **empty** directories:
  ``` rmdir Downloads/games ```
* Remove a **non-empty** directory. (USE WITH CAUTION):
  ``` rm -r Downloads/games ```
* Remove a file and **prompt confirmation** before removal:
  ``` rm -i list ```
* Remove all files inside a directory and **ask** before removing **more than 3 files**:
  ``` rm -I Downloads/games/* ```


## cp
#### Definition
* **cp** colies files/directories from a source to a destination.
#### Formula
  ``` cp + files to copy + destination ```
  ``` cp -r + directory to copy + destination ```
#### Example
* Copy a file:
  ``` cp Downloads/wallpapers.zip Pictures/ ```
* Copy a directory using **absolute** path:
  ``` cp -r ~/Downloads/wallpapers ~/Pictures/ ```
* Copy multiple files:
  ``` sudo cp -r script.sh program.py home.html assets/ /var/www/html/ ```


## mv
#### Definition
* **mv** moves and renames directories
#### Formula
* To move a file:
  ``` mv + source + destination ```
* For renaming files/directories:
  ``` mv +file/directory to rename + new name ```
#### Example
* Move a file from a directory to another using **relative** path:
  ``` mv Downloads/homework.pdf Documents/ ```
* Move a directory to another using **absolute** path:
  ``` sudo mv ~/Downloads/theme /usr/share/themes ```
  * Notice that in this command I used sudo since the destination is owned by the root.
* Move a file from a directory to another combining **absolute** path and **relative** path:
  ``` mv Downloads/homework.docx /media/student/flashdrive/ ```
* Rename a file:
  ``` mv homework/docx cis106homework.docx ```
* Rename a file using **absolute path**:
  ``` mv ~/Downloads/homework.docx ~/Downloads/cis106homework.docx ```