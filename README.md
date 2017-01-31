# postgres-via-r
# What?
Prepares a computer for connecting to a postgres database through RPostgres in
R.

# How?
It downloads all the prerequisites for running RPostgres.

# Why...
## RPostgres instead of RPostgreSQL?
Because RPostgreSQL seems not to connect to some amazon databases, while RPostgres does.
## Does this even exist?
Because installing RPostgres on a stock Mac has elements of trial and error, and the world becomes a better place if no one else has to go through that.

# What does it contain?
The install file, and an example connection.

# Technical 

## Prerequisites
R

## USAGE
In bin folder, run `./install.sh` in your terminal.

## Tested on
macOS 10.12.2
