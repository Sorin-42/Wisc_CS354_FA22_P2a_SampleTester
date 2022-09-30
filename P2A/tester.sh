#! /bin/sh
echo "CS354 FA22 Project 2A simple Tester"
echo "by Zhilin Du"
echo "pwd:$(pwd)"
echo ""
echo "=== CLA Checking Tests Begin ==="
./check_board > claOut.txt
diff claOut.txt ./test/claRes.txt > claCmp.txt
if [ -s claCmp.txt ]; then 
        echo "Fail CLA Test (No Argument)"
else
        echo "CLA Test (No Argument) Success"
fi
rm claOut.txt
rm claCmp.txt

./check_board ./test/1.txt ./test/1.txt > claOut.txt
diff claOut.txt ./test/claRes.txt  > claCmp.txt
if [ -s claCmp.txt ]; then
        echo "Fail CLA Test (More Than 1 Argument)"
else
        echo "CLA Test (More Than 1 Argument) Success"
fi
rm claOut.txt
rm claCmp.txt
echo "=== CLA Checking Tests End ==="
echo ""
echo "=== Execution Tests Begin ==="
for i in $(seq 1 10)
do
	./check_board ./test/$i.txt > output$i.txt
	diff output$i.txt ./test/res$i.txt > cmp$i.txt
	if [ -s cmp$i.txt ]; then
		echo "Fail Test" $i
	else
		echo "Test" $i "Success"
	fi
	rm output$i.txt
	rm cmp$i.txt
done
echo "=== Execution Tests End ==="
echo ""
echo "=== Memory Leak Test ==="
valgrind --tool=memcheck --leak-check=full -s ./check_board ./test/1.txt
echo ""
echo "=== End Of Tester ==="
