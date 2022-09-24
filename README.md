# bash-scripts

These are various Bash scripts that I have created with several goals in mind:
1. Don't re-invent the wheel
2. Don't make things complicated
3. Try to incorporate scalability and bug-resistant operations
4. Security, Security, Security

As inevitably it will be, I will violate one or two of these goals.

## tat.py - Print the number of failed login attempts
This script reads the auth.log file, specifically the "Failed password" lines.


It's helpful if you would like a quick overview on how many failed login attempts there was in a specific time period, currently said to the first and last instance in the log file.
