#!/usr/bin/env bash

# Used for many xpt files

# foreach i (*)
# python -m xport $i.XPT > $i.csv && rm $1.XPT
# end

for arg; do
    file_name=$(echo "$arg" | cut -d '.' -f 1)
    python -m xport "${file_name}.XPT" > "${file_name}.csv" && rm "${file_name}.XPT"
done
