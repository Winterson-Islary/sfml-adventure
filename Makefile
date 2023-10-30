#Variables
exe_filename = app
obj_filename = main.o
cpp_files = ./src/*.cpp
obj_files = ./bin/*.o
obj_output = ./bin/$(obj_filename)
exe_output = ./bin/$(exe_filename)

all: compile link

compile:
	g++ -c $(cpp_files) -o $(obj_output) -I"<Specify path to SFML include>" -DSFML_STATIC	
link:
	g++ $(obj_files) -o $(exe_output) -L"<Specify path to SFML lib>" -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lopengl32 -lfreetype -lwinmm -lgdi32 -mwindows -lsfml-main
clean:
	del /Q bin\*.o
	del /Q bin\*.exe