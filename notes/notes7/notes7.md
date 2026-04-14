# Notes 7

## Wildcards

### * wildcard
This wildcard matches 0 to any number of characters.
#### Example
``` ls ~/Downloads/*.png ``` -- Lists all .png files in the Downloads directory
``` rm ~/Pictures/*.webp``` -- Deletes all .webp files in the Pictures directory
``` ls -1d foldername/*/ ``` -- List all of the directories inside a given directory without listing their content

#### ? wildcard
This wildcard matches one character
#### Example
``` ls ~/Downloads/*.???? ``` -- Lists all files in the Downloads directory that have a 4-letter file extension
``` ls ~/Downloads/*f?ll.sh ``` -- List all files in the Downloads directory that contain "f" followed by any single character, and end in "ll.sh"

### [] wildcard
This wildcard matches any one character in a set
#### Example
``` ls ~/cis106/[[:lower:]]* ``` -- Lists all files that start with lowercase letter in the cis106 directory
``` rm ~/Pictures/[[:upper:]].????``` -- Lists all files that start with an uppercase letter and has a 4 letter file extension in the Pictures directory

## Brace Expansion
This one isn't a wildcard but it is a feature of the bash shell that allows the user to create strings without the need of loops. The strings can be filenames, sequences, or patterns.
#### Example
``` mkdir -vp website/{music/{imgs,audio},scripts/{js,python},extras/{faqs,support}} ``` -- This creates an entire directory structure.
``` touch {index,about,contact}.html ``` -- Creates 3 .hmtl files
``` touch file{1..10}.txt ``` -- Creates 10 .txt files numbered 1 through 10