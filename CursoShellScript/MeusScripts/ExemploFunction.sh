#!/bin/bash

maiuscula () {

	echo $1 | tr a-z A-Z

}

VAR1=$(maiuscula shell)
echo $VAR1
