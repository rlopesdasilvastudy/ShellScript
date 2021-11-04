#/bin/bash

ls /tmp

#exit 0

ls /tmp/outroarquivo

RETURNCODE=$?

echo "O código de retorno do ls foi $RETURNCODE"
