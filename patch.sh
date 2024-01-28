#/bin/bash

file_path="current/node_modules/knex-migrator/lib/database.js"
text_to_add="const isDBExists = err.errno == 1105 && err.sqlMessage.endsWith('database exists');\\
if(isDBExists) return Promise.resolve();\\
"
line_number=129

sed -i "${line_number}i${text_to_add}" "$file_path"
