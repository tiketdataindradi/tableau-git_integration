#!/bin/sh

echo "Workbook Directory : $1"
echo "Environment : $2"
echo "Tableau Type : $3"
echo "Repo Token : $4"

cp -r /action/* /github/workspace/

python main.py --workbook_dir=$1 --env=$2 --tableau_type=$3 --repo_token=$4

exit_status=$?
if [ "${exit_status}" -ne 0 ];
then
    echo "exit ${exit_status}"
    exit 1
fi
# echo "EXIT 0"
exit 0
