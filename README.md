# Shell Script Bug: Silent Failure on Non-Numeric Input

This repository demonstrates a common but subtle bug in shell scripting: silent failure when processing numerical data from a file that contains non-numeric values.  The `bug.sh` script attempts to sum numbers from a file, but it crashes without any error message if it encounters a line that is not a number.

The `bugSolution.sh` script provides a corrected version that handles such errors gracefully, providing better error reporting and preventing unexpected crashes.