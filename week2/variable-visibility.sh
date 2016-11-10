#!/bin/bash
# Example of variable visibility/scope in bash
foo="bar"
echo foo=$foo
bash -c 'echo foo=$foo'
echo foo=$foo

printf '\n###\n\n'

bash -c 'echo new bash pid:$$'; echo old bash pid: $$