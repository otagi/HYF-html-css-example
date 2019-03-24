# List of basic Bash commands

## pwd

Short for "Print Working Directory". Or in other words, "where am I in the directory tree?".

Example:

```bash
$ pwd
/home/johndoe
```

## ls

Short for "LiSt directory content".

Use the `-l` option to display the output in long form, with the files metadata.

Use the `-a` option to display the hidden files (those starting with a dot), including `.` (current directory) and `..` (container directory).

Use the `-al` or `-la` option to combine both.

Example:

```
$ ls
Desktop Documents some_file.html

$ ls -l
drwx------@  6 tiago  staff   192 Mar 24 13:43 Desktop
drwx------@  5 tiago  staff   160 Dec 27 12:57 Documents
-rw-r--r--@  1 tiago  staff   463 Oct 29 14:27 some_file.html

$ ls -a
. .. Desktop Documents some_file.html
```

## cd

Short for "Change Directory". Use it to navigate in your file system.

Give the name of the directory to go to as a parameter, if that directory is inside the current one.

Give an absolute (from the root) or relative (from the current directory) path to navigate to an arbitrary place in your file system.

Use the tilde `~` as a shortcut path to your home directory.

Use the `..` special directory name to go back one level in your directory tree.

Example:

```bash
$ cd ~
/home/johndoe

$ cd Desktop
/home/johndoe/Desktop

$ cd /home/johndoe/Documents/MyProject/images
/home/johndoe/Documents/MyProject/images

$ cd ..
/home/johndoe/Documents/MyProject

$ cd ../..
/home/johndoe/
```

## cat, more, less

Shows the content of a text file.

`cat` is the simpler version. It just dumps the content of the file in the terminal.

`more` is a bit nicer for long files: it stops at the first "page" of your file, and waits for you to press the space bar to continue.

`less` is even nicer: it lets you scroll up and down your file. Press `q` to quit and return to bash.

Example:

```bash
$ cat my_file.html

$ more my_file.html

$ less my_file.html
```

## touch

"Touches" (updates) the modification date of the file. As a side effect, an empty text file is created if that file does not exist yet.

Example:

```bash
$ touch my_new_file.html
```

## cp

Short for "CoPy file". It copies a file from one place to another.

The first argument is the name (or the full path) of the file to copy.

The second argument is the name (or the full path) of the new copied file.

Like with most commands, it works in the current directory, but you can use more complex directory paths to copy the original file anywhere you want.

Example:

```bash
$ cp resume.html resume2.html

$ cp resume2.html /home/johndoe/Desktop/resume3.html

$ cp /home/johndoe/Desktop/resume3.html ~/resume4.html
```

## mv

Short for "MoVe file". It's the same as the `cp` command, except that the file is moved instead of copied.

Example:

```bash
$ mv resume.html resume2.html

$ mv resume2.html /home/johndoe/Desktop/resume3.html

$ mv /home/johndoe/Desktop/resume3.html ~/resume4.html
```

## rm

Short for "ReMove file". It deletes a file.

Use with extreme caution! There is no undo nor "trash can" in bash. Once you remove a file with this command, it is gone forever. Don't test it with your precious homework files.

Example:

```bash
$ rm temporary_file.txt
```

## man

Short for "MANual". Displays the documentation for a bash command, if it is available.

Quit it the same way as with `less`: press the `q` key.

Example:

```bash
$ man pwd
$ man ls
$ man cat
$ man man
```
