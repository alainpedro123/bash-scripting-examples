#! /bin/bash

VAR=$(cat<<'END_HEREDOC'
Here we could
write
multi line string
using heredoc
END_HEREDOC
)

echo "$VAR"