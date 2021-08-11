#!/bin/bash

# creates template for solving the ACM problem
function solve() {
	mkdir $1
	cp -r ~/development/olymp/Template/ $1
}

# prints the input
function print_my_input() {
	echo 'Your input: ' $1
}

function shuttle() {
    if [ "$1" = "htb" ]; then
        sshuttle -r root@134.122.91.61 10.10.10.0/24
    fi
    if [ "$1" = "thm" ]; then
        sshuttle -r root@134.122.91.61 10.8.0.0/16
    fi
    if [ "$1" = "proxy" ]; then
        sshuttle -r root@134.122.91.61 0.0.0.0/0
    fi
}

function farm() {
    git add .
    git commit -m "$1"
    git push
}

function mkcd() {
  mkdir $1
  cd $1
}

function dockershell() {
	docker run --rm -i -t --entrypoint=/bin/bash "$@"
}

function dockershellsh() {
	docker run --rm -i -t --entrypoint=/bin/sh "$@"
}

function dockershellhere() {
	dirname=${PWD##*/}
	docker run --rm -it --entrypoint=/bin/bash -v `pwd`:/${dirname} -w /${dirname} "$@"
}

function dockershellshhere() {
	dirname=${PWD##*/}
	docker run --rm -it --entrypoint=/bin/sh -v `pwd`:/${dirname} -w /${dirname} "$@"
}
