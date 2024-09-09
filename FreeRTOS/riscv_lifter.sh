#!/bin/bash

if [ -z "$OBJDUMP" ]; then
    echo "Set \$OBJDUMP, this is RISC-V"
    exit 1
fi

# Check if the user has provided an input file
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <compiled_file> <coq_definition_name>"
    exit 1
fi

input_file="$1"
coq_definition_name="$2"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: File '$input_file' not found!"
    exit 1
fi

echo "Require Import NArith."
echo "Open Scope N."
echo
echo "Definition $coq_definition_name (_ : store) (a : addr) : N :="
echo "    match a with"

# Run objdump to disassemble the file and grep for code lines
$OBJDUMP -d "$input_file" | while read -r line; do
    if echo "$line" | grep -E '^\s*[0-9a-f]+:' > /dev/null; then
        # This is a code line
        address=$(echo "$line" | awk '{print $1}' | sed 's/://')
        binary=$(echo "$line" | awk '{print $2}')
        instruction=$(echo "$line" | awk '{for (i=3; i<=NF; i++) printf "%s ", $i; print ""}')

        echo "    | 0x$address => 0x$binary (* $instruction *)"
    elif echo "$line" | grep -E '^[0-9a-f]+ <[^>]+>:' > /dev/null; then
        # This is a label line
        label=$(echo "$line" | awk '{print $2}' | sed 's/://')
        echo "    (* $label *)"
    fi
done

echo "    | _ => 0"
echo "    end."
