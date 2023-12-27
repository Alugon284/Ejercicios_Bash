#!/bin/bash

cuarentena_dir="/root/cuarentena"

[ ! -d "$cuarentena_dir" ] && sudo mkdir -p "$cuarentena_dir"

grep -rl "Hack" * | xargs -I{} sudo mv {} "$cuarentena_dir/"

echo "Proceso completado."

