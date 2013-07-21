@echo off

rem -----------------------------------------------------
set UNITY_ROOT="..\.."

set GENERATOR=%UNITY_ROOT%\auto\python_scripts\makeTestRunner.py

set TESTS_DIR=test

set OUTPUT_PATH=test\test_runners\_all_tests.c
rem -----------------------------------------------------

python %GENERATOR% %TESTS_DIR% -o %OUTPUT_PATH%