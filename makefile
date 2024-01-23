CC = g++
CXXFLAGS = -std=c++20 -Wall -Wextra

APPNAME = mymusic
SRCDIR = ./src
OBJDIR = ./obj

$(APPNAME): $(APPNAME).o
	$(CC) $(CXXFLAGS) -o $(APPNAME) $(OBJDIR)/$(APPNAME).o

$(APPNAME).o : $(SRCDIR)/main.cpp
	$(CC) $(CXXFLAGS) -c $(SRCDIR)/main.cpp -o $(OBJDIR)/$(APPNAME).o