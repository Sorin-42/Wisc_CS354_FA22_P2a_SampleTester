# Wisc_CS354_FA22_P2a_SampleTester

This repository automatically tests your project 2a implementation by drivers given before the deadline and written by me. There is no code which can be submitted for this project in this repository.

This repository is not endorsed or created by anyone working in an official capacity with UW-Madison or any staff for COMP SCI 354. The scripts are made by a student, for students.

By running this repository, you are executing code you downloaded from the internet. Back up your files and take a look at what you are running first.

To run the tests, you should copy all the files in this folder into your p2a directory (place that store your ```check_board.c``` and ```check_board```). Then execute ```bash test.sh``` within the root directory.

Execution Test cases:

1. Partial complete valid
2. Complete valid
3. Empty (0) valid
4. Invalid size < 1
5. Invalid size > 9
6. Duplicate row
7. Duplicate boarder
8. Duplicate column
9. Duplicate corner
10. Duplicate interior


**ps. This tester won't test if you check the return values of malloc(), fopen(), and fclose()**
