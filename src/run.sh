SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"
for path in `ls -1 | grep .sql | sort`; do
	echo $path
	sqlite3 < $path
done
