CC	 = gcc
OBJFILES = driver.o file1.o file2.o
TARGET	 = makefileAssignment

all: $(TARGET)

$(TARGET): $(OBJFILES) 
	$(CC) -Wall -o $(TARGET) $(OBJFILES) 

file1.o: file1.c headers.h

file2.o: file2.c headers.h

driver.o: driver.c headers.h

clean:
	rm -f $(TARGET) $(OBJFILES)
