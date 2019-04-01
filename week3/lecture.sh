# https://github.com/HackYourFuture/CommandLine/blob/master/Week2/Lecture.md

# Display the string Hello on the terminal.
echo "Hello"

# Redirect the output of the echo command to the file "greetings.txt".
echo "Hello" > greetings.txt

# *Append* the output of the echo command to the file "greetings.txt".
echo "How are you doing?" >> greetings.txt

# Read the contents from the file "numbers.txt" and sort them.
# By default, sort will sort the lines alphabetically.
sort < numbers.txt

# Sort the lines numerically.
sort -n < numbers.txt

# Let's see what's inside the file "commands.sh".
cat commands.sh

# Execute the shell script file.
sh commands.sh

# Execute the shell script file, and redirect the errors to the file "errors.log".
sh commands.sh 2> errors.log

# Use a "pipe" to connect the output of the command "cat" to the input of the command "more"
cat big_file.txt | more

# Send the output of "cat" to the input of "sort",
# then send the output of "sort" to the input of "uniq".
cat numbers.txt | sort | uniq

# Increment the variable "i" from 1 to 10, and "echo" that value each time.
for i in {1..10}; do echo $i; done

# (See also "loop.sh" for the same "for" instruction, but in a shell script.)

# Process the escape sequence \n and convert that to a newline.
echo -e "Hello\nClass 4 Students"

# Copy the file "numbers.txt" to a new file called "numbers_copy.txt".
cp numbers.txt numbers_copy.txt

# Execute two bash commands, one after the other.
mkdir test && cd test

# Display the content of the URL on your terminal.
curl https://hackyourfuture.be

# Same as above, but the output goes to the file "index.html" instead of the standard output.
curl -o index.html https://hackyourfuture.be

# Display the HTTP headers of the URL on your terminal.
curl -I https://hackyourfuture.be
