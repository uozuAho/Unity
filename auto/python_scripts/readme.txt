python scripts for Unity
========================

This directory was created since I am too lazy to learn Ruby.


Contents
--------
- makeTestRunner.py
 - Takes directories as arguments, parses all Unity tests in the c
   source files within and outputs a test runner source file.
   Run ```python makeTestRunner.py -h``` for more info.

- _generate_test_runners.bat
 - An example windows batch file that calls makeTestRunner.py with
   user-set parameters.