# Files
#

PATH = "data/file.txt"
PATH2 = "data/file2.txt"

file = File.open(PATH)
file_data1 = file.read # "User 1\nUser 2\nUser 3\nUser 4\nUser 5\n"
file.close

file = File.open(PATH)
file_data2 = file.readlines.map(&:chomp) # ["User 1", "User 2", "User 3", "User 4", "User 5"]
file.close

File.open(PATH, "w") { |f| f.write "User 6\n" }

File.write(PATH, "User 7\n", mode: "a")

File.size(PATH) # File size in bytes

File.rename(PATH, PATH2) # Renaming a file
File.rename(PATH2, PATH) # Renaming a file

File.exists?(PATH) # Does this file already exist?

File.extname(PATH) # Get the file extension, this works even if the file doesn't exist

File.basename(PATH) # Get the file name without the directory par

File.dirname(PATH) # Get the path for this file, without the file name

File.directory?(PATH) # Is this actually a file or a directory?

# All ruby files
Dir.glob("*.rb") # ["hashes.rb", "strings.rb", "classes.rb", "modules.rb", "blocks.rb", "exceptions.rb", "loops.rb", "conditions.rb", "ranges.rb", "symbols.rb", "numbers.rb", "methods.rb", "arrays.rb", "files.rb"]

Dir.pwd # Current working directory

Dir.exists?("tmp") # Check if a directory exists:

Dir.mkdir("tmp") # Create a new directory
