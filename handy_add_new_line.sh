echo "Create space between line in file"
echo -n "Enter how many line space you want to create: "
read line_space
echo -n "Enter the input file name: "
read file_name
#stringeg1="G;"
#stringeg2="G;"
stringeg1="\n"
stringeg2=$stringeg1
for (( i=1; i<=$line_space; i++ ))
do
stringeg3="$stringeg1$stringeg2"
result=`echo $stringeg3`
stringeg2=$stringeg3
done
filename1="$file_name"
filename2="with_added_lines_"
filename3="$filename2$filename1"
touch $filename3
#echo $stringeg3
cat $file_name |  xargs -d '\n' printf "%s$result" > $filename3
#awk 'ORS="$stringeg3"' $filename3
#sed -e '$stringeg3' $filename3
echo "Checkout new modifiled file $filename3"
