Unity C unit testing framework
==============================

My fork of Unity. I'm too lazy to learn ruby and too impatient to get my
pull requests merged :)

See here for Unity details: http://throwtheswitch.org/white-papers/unity-intro.html


Differences of this fork
------------------------

- Uses python for test runner generation
- Generated test runners use Unity test fixture
- NOTE: The existing ruby scripts do much more than my python script
  (which just generates test runners). I just wanted to run tests on
  my PC and embedded platforms, nothing more.


To use Unity in your existing project
-------------------------------------

You'll need the contents of the following directories:

- src
- extra
- auto/python_scripts

See the examples directory for clues. I've added an example
that uses my python script.

1. Copy these to your project
2. Modify auto/python_scripts/_generate_test_runners.bat to suit
   your project paths, or create your own similar script.
3. Assuming you've written some tests, run the script. You should
   now be able to call RunAllTests() from your program to run all
   your tests.
4. Profit