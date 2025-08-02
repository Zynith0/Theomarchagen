#!

test=$(curl localhost:8080/)

if [[ $test == "Hello" ]]; then
	echo "󰒋 Up"
fi

if [[ $test != "Hello" ]]; then
	echo "󰒏 Down"
fi
