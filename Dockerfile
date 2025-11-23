FROM ubuntu:latest

# Create a workspace directory
RUN mkdir /labzone

# Switch to the workspace
WORKDIR /labzone

# Create sample files
RUN echo "first file content" > fileA.txt
RUN echo "second file content" > fileB.txt

# Show present working directory
RUN pwd

# Display first few lines of a file
RUN head fileA.txt

# Display last few lines of a file
RUN tail fileB.txt

# Rename a file
RUN mv fileA.txt renamed_file.txt

# Change file permissions
RUN chmod 644 renamed_file.txt

# Show system information
RUN uname -a

# Display system hostname
RUN hostname

